#> chunktracker:private/macro/start_tracking
#
# @private
# @input x, z, dimension, id

$execute if data storage chunktracker:data tracked_chunks."$(id)"[{x: $(x), z: $(z), dimension: "$(dimension)"}] run return fail
$data modify storage chunktracker:data tracked_chunks."$(id)" append value {x: $(x), z: $(z), dimension: "$(dimension)"}
return 1
