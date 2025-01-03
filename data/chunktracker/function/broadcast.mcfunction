#> chunktracker:broadcast
#
# Runs a command at every tracked chunk, from last added to first added
# Chunks are not guaranteed to be loaded
#
# @api
# @input
#   id: string
#       The ID of the tracker (must be a valid NBT tag name)
#   command: string
#       The command to run

$data modify storage chunktracker:data chunks set from storage chunktracker:data tracked_chunks."$(id)"
$data modify storage chunktracker:data command set value "$(command)"
execute store result score chunks chunktracker if data storage chunktracker:data chunks[]
execute if score chunks chunktracker matches 1.. run function chunktracker:private/broadcast/loop
data remove storage chunktracker:data command
data remove storage chunktracker:data chunks
