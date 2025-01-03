#> chunktracker:private/macro/is_tracked
#
# @private
# @within chunktracker:is_tracked
# @input x, z, dimension, id

$return run execute if data storage chunktracker:data tracked_chunks."$(id)"[{x: $(x), z: $(z), dimension: "$(dimension)"}]
