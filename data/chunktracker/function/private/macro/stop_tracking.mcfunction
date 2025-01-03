#> chunktracker:private/macro/stop_tracking
#
# @private
# @input x, z, dimension, id

$return run data remove storage chunktracker:data tracked_chunks."$(id)"[{x: $(x), z: $(z), dimension: "$(dimension)"}]
