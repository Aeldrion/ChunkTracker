#> chunktracker:private/broadcast/loop
#
# On each step of the loop, runs the command on one chunk
#
# @private
# @within chunktracker:broadcast
# @within chunktracker:private/broadcast/loop

# Gather macro arguments
data modify storage chunktracker:data chunk set from storage chunktracker:data chunks[-1]
execute store result storage chunktracker:args x int 16 run data get storage chunktracker:data chunk.x
execute store result storage chunktracker:args z int 16 run data get storage chunktracker:data chunk.z
data modify storage chunktracker:args dimension set from storage chunktracker:data chunk.dimension
data modify storage chunktracker:args command set from storage chunktracker:data command

# Load a chunk and run the command there
function chunktracker:private/broadcast/run with storage chunktracker:args

# Loop this function
data remove storage chunktracker:data chunks[-1]
scoreboard players remove chunks chunktracker 1
execute if score chunks chunktracker matches 1.. run function chunktracker:private/broadcast/loop
