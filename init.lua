
minetest.register_node("think_block:block", {
    description = "Think Block",
    drawtype = "nodebox",
    tiles = {"think_block.png"},
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
            "What is the meaning of pixels?",
            "Why does dirt turn to grass when exposed to sunlight?",
            "How many nodes tall is the MineTest sky?",
            "What’s the rarest block you’ve ever found?",
            "Why do mobs fear the player?",
            "Can a voxel dream of becoming a sphere?",
            "How deep is the deepest cave in this world?",
            "What’s the fastest way to dig through stone?",
            "Why don’t trees fall when chopped?",
            "Are ladders the true heroes of climbing?",
            "Can you build a house entirely from cobblestone?",
            "Why do torches last forever?",
            "Who first discovered mese crystals?",
            "Is water infinite, or does it just feel that way?",
            "Why can you breathe underwater indefinitely with potions?",
            "Why do sand and gravel fall, but dirt doesn’t?",
            "Can you create a castle without using stone?",
            "Are boats faster than swimming?",
            "What happens if you mine straight up?",
            "How does TNT know when to explode?",
            "Why can’t I eat apples faster?",
            "Can you craft happiness?",
            "Is crafting table placement an art or science?",
            "Do chickens dream of flying?",
            "How far does a bow shoot?",
            "Can a MineTest world exist without trees?",
            "What’s the largest structure you’ve ever built?",
            "Why do tools break, but torches don’t?",
            "How do chests hold so much?",
            "What’s the secret to finding diamonds?",
            "Can the sun set without you watching?",
            "Why do flowers grow only on grass?",
            "What if all mobs turned friendly?",
            "Is lava really the best trash disposal?",
            "How long does it take to walk 1,000 blocks?",
            "Do ladders defy gravity?",
            "What’s the longest drop you’ve survived?",
            "Why do vines grow so fast?",
            "Can fences keep everything out?",
            "What’s the best way to farm?",
            "Why do leaves vanish when a tree is chopped?",
            "How many chickens are too many?",
            "Can a MineTest world have seasons?",
            "Why does the world end at the edges?",
            "What’s the tallest tower you’ve ever built?",
            "Is digging addictive?",
            "Why can’t you climb smooth stone?",
            "Can you ever truly be lost?",
            "Why don’t mobs climb ladders?",
            "How do saplings know when to grow?",
            "Can you survive without tools?",
            "What’s the fastest way to clear land?",
            "Why doesn’t rain put out lava?",
            "Can you build underwater cities?",
            "What’s the smallest home you can live in?",
            "How many chickens can fit in a boat?",
            "Why does fire burn forever on netherrack?",
            "How do beds skip time?",
            "What’s the rarest biome you’ve seen?",
            "Can you create a perpetual motion machine?",
            "Why don’t fish ever drown?",
            "Are pickaxes better than shovels?",
            "What’s the largest farm you’ve managed?",
            "Can you mine faster than the speed of light?",
            "Why do torches light up instantly?",
            "Are signs the best way to remember things?",
            "Why do wolves love bones?",
            "Can you tame mobs with kindness?",
            "Why is the world flat but the sky round?",
            "Can a cobblestone generator run forever?",
            "Why do flowers grow on sand?",
            "What’s the best use for emeralds?",
            "Can you live underground forever?",
            "How much TNT is too much?",
            "Why don’t fences connect to walls?",
            "Can a fishing rod catch more than fish?",
            "Why does snow disappear under torches?",
            "What’s the best way to find gold?",
            "Can you walk a straight line without getting lost?",
            "Why does lava flow slower than water?",
            "How many worlds can you manage?",
            "Can you build a computer in MineTest?",
            "Why do doors open both ways?",
            "What’s the highest jump you’ve survived?",
            "Can you trap mobs with glass?",
            "Why does rain fall through leaves?",
            "Can you grow a tree in a cave?",
            "What’s the longest bridge you’ve built?",
            "Why do saplings grow faster with bone meal?",
            "Can you mine without leaving a mess?",
            "Why do mobs spawn in the dark?",
            "What’s the best way to light up a cave?",
            "Can you create infinite water?",
            "Why don’t beds explode here?",
            "How far can you shoot an arrow?",
            "What’s the most creative trap you’ve built?",
            "Why don’t ladders burn in fire?",
            "Can you build a floating island?",
            "Why do rails connect automatically?",
            "How do mobs find you in the dark?"
        }
        local random_thought = thoughts[math.random(#thoughts)]
        minetest.chat_send_player(clicker:get_player_name(), "Thinking: " .. random_thought)
    end,
    light_source = 5,
})
