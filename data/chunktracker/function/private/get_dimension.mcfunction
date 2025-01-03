#> chunktracker:private/get_dimension
#
# Retrieves the ID of the current dimension
#
# @private
# @within chunktracker:private/get_position
# @context
#   @s: a piglin brute
# @writes
#   storage chunktracker:data
#       chunk.dimension: string
#           The ID of the current dimension

data modify storage chunktracker:data chunk.dimension set from entity @s Brain.memories."minecraft:home".value.dimension
kill @s
