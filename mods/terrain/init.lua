
minetest.register_node('terrain:stone', {
  description = "mapgen_stone",
	tiles = {"stone.png"},
  groups = { oddly_breakable_by_hand = 3 },
  is_ground_content = true
})

minetest.register_node('terrain:water_source', {
  description = 'mapgen_water_source',
  tiles = { 'water_source.png' },
  groups = { oddly_breakable_by_hand = 0 },
  is_ground_content = true
})

minetest.register_node('terrain:river_water_source', {
  description = 'mapgen_river_water_source”',
  tiles = { 'river_water_source.png' },
  groups = { oddly_breakable_by_hand = 0 },
  is_ground_content = true
})

minetest.register_alias('mapgen_stone', 'terrain:stone')
minetest.register_alias('mapgen_water_source', 'terrain:water_source')
minetest.register_alias('mapgen_river_water_source', 'terrain:river_water_source')
