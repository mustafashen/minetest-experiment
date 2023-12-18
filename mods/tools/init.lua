
minetest.override_item("", {
	wield_scale = {x=1,y=10,z=2},
	tool_capabilities = {
		full_punch_interval = 10,
		max_drop_level = 0,
		groupcaps = {
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0}, uses=0}
		},
		damage_groups = {unarmed=1},
	}
})
