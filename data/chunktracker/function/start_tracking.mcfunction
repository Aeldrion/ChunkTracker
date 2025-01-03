#> chunktracker:start_tracking
#
# Start tracking the current chunk
#
# @api
# @input
#   id: string
#       The ID of the tracker (must be a valid NBT tag name)
# @output
#   Result/success: 0 if the current chunk was already tracked, 1 otherwise

function chunktracker:private/get_position
data modify storage chunktracker:args {} merge from storage chunktracker:data chunk
data remove storage chunktracker:data chunk
$data modify storage chunktracker:args id set value "$(id)"
return run function chunktracker:private/macro/start_tracking with storage chunktracker:args
