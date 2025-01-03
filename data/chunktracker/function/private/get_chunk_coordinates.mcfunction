#> chunktracker:private/get_chunk_coordinates
#
# Retrieves the chunk coordinates of the current position
#
# @private
# @within chunktracker:private/get_position
# @context
#   @s: a marker
# @writes
#   storage chunktracker:data
#       chunk.x: int
#           The X coordinate of the current chunk
#       chunk.z: int
#           The Z coordinate of the current chunk

data modify storage chunktracker:data Pos set from entity @s Pos
execute store result storage chunktracker:data chunk.x int 1 run data get storage chunktracker:data Pos[0] 0.0625
execute store result storage chunktracker:data chunk.z int 1 run data get storage chunktracker:data Pos[2] 0.0625
data remove storage chunktracker:data Pos
kill @s
