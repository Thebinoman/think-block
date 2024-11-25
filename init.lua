
minetest.register_node("sit_and_think:thinking_chair", {
    description = "Thinking Chair",
    drawtype = "nodebox",
    tiles = {"sit_and_think_chair.png"},
    paramtype2 = "facedir",
    groups = {choppy = 2, oddly_breakable_by_hand = 1},
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- Chair
        },
    },
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        local thoughts = {
            "Why is the sky blue in MineTest?",
            "What came first, the voxel or the cube?",
            "If I dig straight down, where will I end up?",
            "Is this chair really comfortable?",
            "What is the meaning of pixels?"
        }
        local random_thought = thoughts[math.random(#thoughts)]
        minetest.chat_send_player(clicker:get_player_name(), "Thinking: " .. random_thought)
    end,
    light_source = 5,
})
