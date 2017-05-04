--[[data:extend(
{  ]]--


--[[local function createShieldEffect(id)
 data:extend(
{  
  {
    type = "sticker",
    name = "shield-effect-"..id,
    --icon = "__base__/graphics/icons/slowdown-sticker.png",
    flags = {},
    animation =
    {
      filename = "__Shield-Pulse__/graphics/entity/"..id..".png",
      priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
    },
    duration_in_ticks = 2,
	target_movement_modifier = 0,
  },

})

end]]--
local function createShieldEffect(id)
 data:extend(
{  
  {
    type = "explosion",
    name = "shield-effect-"..id,
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/"..id..".png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,
  },

})
end


createShieldEffect(1)
createShieldEffect(2)
createShieldEffect(3)
createShieldEffect(4)
createShieldEffect(5)
createShieldEffect(6)
createShieldEffect(7)
createShieldEffect(8)
createShieldEffect(9)
createShieldEffect(10)
createShieldEffect(11)
createShieldEffect(12)
createShieldEffect(13)
createShieldEffect(14)
createShieldEffect(15)
createShieldEffect(16)
createShieldEffect(17)
createShieldEffect(18)
createShieldEffect(19)
createShieldEffect(20)
--[[  {
    type = "sticker",
    name = "shield-effect-1",
    --icon = "__base__/graphics/icons/slowdown-sticker.png",
    flags = {},
    animation =
    {
      filename = "__Shield-Pulse__/graphics/entity/1.png",
      priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
    },
    duration_in_ticks = 2,
  },


  {
    type = "explosion",
    name = "shield-effect-1",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/1.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-2",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/2.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-3",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/3.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-4",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/4.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-5",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/5.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-6",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/6.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-7",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/7.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-8",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/8.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-9",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/9.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-10",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/10.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-11",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/11.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-12",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/12.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-13",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/13.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-14",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/14.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-15",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/15.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-16",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/16.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-17",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/17.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-18",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/18.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-19",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/19.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-20",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/20.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
}
)
]]--
--[[
  {
    type = "explosion",
    name = "cros",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Shield-Pulse__/graphics/entity/cros.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 1
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  }

--]]
