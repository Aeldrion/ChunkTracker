#> chunktracker:private/broadcast/run
#
# @private
# @within chunktracker:private/broadcast/loop
# @input x, z, dimension, command

$execute in $(dimension) positioned $(x).0 0.0 $(z).0 run $(command)
