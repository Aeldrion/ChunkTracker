#> chunktracker:is_tracked
#
# Returns whether the current check is tracked or not
#
# @api
# @input
#   id: string
#       The ID of the tracker (must be a valid NBT tag name)
# @output
#   Return/Success: 1 if the current check is tracked, 0 otherwise

function chunktracker:private/get_position
data modify storage chunktracker:args {} merge from storage chunktracker:data chunk
data remove storage chunktracker:data chunk
$data modify storage chunktracker:args id set value "$(id)"
return run function chunktracker:private/macro/is_tracked with storage chunktracker:args
