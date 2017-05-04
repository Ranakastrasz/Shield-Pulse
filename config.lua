
if not config then
    config = {}
end
--config.Debug = true
config.tickRate = 1-- Logic runs each time this many ticks pass
config.ticksPerSecond = 60
config.secondsPerTick = config.tickRate/config.ticksPerSecond -- To avoid division operations in a loop

config.ShieldAnimation = true