#> chunktracker:get_position
#
# Gets position and dimension information about the current chunk
#
# @private

execute summon minecraft:marker run function chunktracker:private/get_chunk_coordinates
execute positioned -30000000 0 0 summon minecraft:piglin_brute run function chunktracker:private/get_dimension
