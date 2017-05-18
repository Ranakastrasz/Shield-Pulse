require "config"

--[[
    This module handles the gameloop alteration

]]--

function verifySettings()
	if (config.tickRate < 0) then
		config.tickRate = 1
		throwError("Tick rate must be >= 0.")
	end
end

function onload()  -- this function 
       -- globalPrint("onLoad")
	if (global.loaded == nil) then
		global.loaded = true
       -- globalPrint("loaded")
        
		verifySettings()
	end
    if (not global.surface) then
        global.surface = game.surfaces['nauvis']
    end
    if (not global.modularArmor) then
        global.modularArmor = {}
    end
    if (global.ticking == nil) then
        global.ticking = 0
    end
    script.on_event(defines.events.on_tick, ticker)
end

script.on_init(onload)
script.on_configuration_changed(onload)


function globalPrint(msg)
  local players = game.players
  if config.Debug then
      for i=1, #players do
        players[i].print(msg)
      end
  end
end


function tableIsEmpty(t)
	if (t) then
		for k in pairs(t) do
			return false
		end
	end
	return true
end

function ticker() -- run once per tickRate number of gameticks.
    if (game.tick % config.tickRate) == 0 then
		tick()
	else
	end
end

function sfxShield(id,targetz)--positionz)
    global.surface.create_entity{name="shield-effect-"..id, position={targetz.position.x-0.0, targetz.position.y+0.3}}
	
	
    --game.surfaces['nauvis'].create_entity{name="slowdown-sticker", target=game.players[1].character, position={0.0,0.0}}
    --game.surfaces['nauvis'].create_entity{name="slowdown-sticker", position={0.0,0.0}}

end

function tick()
	local shouldKeepTicking
    local thisPlayer = nil
    local players = game.players
        --globalPrint("tick")
    shouldKeepTicking = true -- Due to lack of any alternate method of detecting player's armor state, we have to always tick.
    
    for i=1, #players do
        thisPlayer = players[i]
        if (thisPlayer.connected) then
            if (thisPlayer.character) then
                local modularArmor = global.modularArmor[i]
                
                if (not modularArmor) then
                    
                    modularArmor = {} -- ensure player has data attached
                    global.modularArmor[i] = modularArmor
                    
                end
                
                if (not modularArmor.shieldSFX) then
                    modularArmor.shieldSFX = {}
                    modularArmor.shieldSFX.previousShield = 0
                    modularArmor.shieldSFX.lastDamage = 0
                    modularArmor.shieldSFX.direction = 0
                    modularArmor.shieldSFX.lastSFX = 0
                end
                
                
                local armor = thisPlayer.get_inventory(defines.inventory.player_armor)[1] -- Check for armour presence.
                          
                if (armor ~= nil and armor.valid_for_read) then
					local grid = armor.grid
                    if (grid ~= nil and grid.valid) then -- Check for grid existence.
                      
--[[
                if (grid ~= nil) and (armor.valid_for_read) then
					local grid = armor.grid
                    if (grid ~= nil) and (grid.valid) then -- Check for grid existence.
                      
          
]]--
                        --local shieldHealth = 0 -- Total shield and shield capacity
                        --local shieldCap = 0
                        --for i,equipment in ipairs(grid.equipment) do -- Loop through all equipment.
                            
                        --    if equipment.max_shield ~= 0 then
                        --        shieldHealth = shieldHealth + equipment.shield -- get shield data for global shield values
                        --        shieldCap = shieldCap + equipment.max_shield
                        --    else
                        --    end
                            
                        --end
                        
                        --local shieldFraction = --shieldHealth/shieldCap--1.0--grid.shield/grid.max_shield
                        

                        if grid.max_shield > 0 then
							shieldFraction = grid.shield/grid.max_shield
                            -- Always slide one tile per tick. Unless taking sudden damage, where you start at 14, occulate within range.
                            -- Charging. Always show 1-4. When finished, go up through to 20 then stop.
                            -- Taking Damage. 5-95% decending, occulate between 5 and 14. After 2 seconds (120 from last damage) go up to 20.
                            -- 
                            
                            
                            local currentSFX = 0
                            if grid.shield < modularArmor.shieldSFX.previousShield then
                                -- Took damage last tick.
                                modularArmor.shieldSFX.lastDamage = 0
                            else
                                -- Not taking damage this tick. Might have taken damage previously however.
                                
                            end
                            if modularArmor.shieldSFX.lastDamage < 10 then
                                -- Still showing damage taken
                                -- Occulate between 5 and 14.
                                -- Clamp between 5 and 14, and reverse.
                                if (modularArmor.shieldSFX.lastSFX <= 5) then
                                    currentSFX = 6
                                    modularArmor.shieldSFX.direction = 1
                                else
                                    if modularArmor.shieldSFX.lastSFX >= 14 then
                                        currentSFX = 13
                                        modularArmor.shieldSFX.direction = -1
                                    else
                                        -- Already in range.
                                        currentSFX = modularArmor.shieldSFX.lastSFX + modularArmor.shieldSFX.direction
                                    end
                                end
                                
                            else
                                -- Damage no longer being taken.
                                if grid.shield < grid.max_shield then
                                    -- Show 1-4 regen
                                    -- Clamp between 1 and 4, and reverse.
                                    -- Instead of 4, use 4 + 1 per 10%. Caps at 14 when it finishes.
                                    if (modularArmor.shieldSFX.lastSFX <= 1) then
                                        currentSFX = 2
                                        modularArmor.shieldSFX.direction = 1
                                    else
                                        if modularArmor.shieldSFX.lastSFX >= (1+(shieldFraction*5)) then
                                            --currentSFX = 3
                                            modularArmor.shieldSFX.direction = -1
                                        else
                                            -- Already in range.
                                        end
                                    end
                                    currentSFX = modularArmor.shieldSFX.lastSFX + modularArmor.shieldSFX.direction
                                else
                                    if modularArmor.shieldSFX.lastSFX ~= 0 and modularArmor.shieldSFX.lastSFX < 20 then
                                        currentSFX = modularArmor.shieldSFX.lastSFX + 1
                                    end
                                    -- at 100%, go up to 20 and end.
                                end
                            end
                            --globalPrint("lastSFX: "..modularArmor.shieldSFX.lastSFX)
                            --globalPrint("currentSFX: "..currentSFX)
                            if currentSFX ~= 0 then
                                
                                sfxShield(math.floor(currentSFX),thisPlayer.character)
                            else
                                
                            end
                            
                            modularArmor.shieldSFX.previousShield = grid.shield
                            modularArmor.shieldSFX.lastDamage = modularArmor.shieldSFX.lastDamage+1
                            --modularArmor.shieldSFX.direction = 0
                            modularArmor.shieldSFX.lastSFX = currentSFX
                        end
                          
                        
                    else
                    end
                else
                end
            else
                -- No player
            end
        end
            
    end
    
	if (not shouldKeepTicking) then
		global.ticking = nil
		script.onevent(defines.events.ontick, nil)
	end
end