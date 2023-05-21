-- Sewed flesh
minetest.register_craftitem("flesh2leather:sewed_flesh", {
    description = "Sewed Flesh",
    inventory_image = "flesh2leather_sewed_flesh.png"
})
minetest.register_alias("sewed_flesh", "flesh2leather:sewed_flesh")

-- Needle
minetest.register_craftitem("flesh2leather:needle", {
    description = "Needle",
    inventory_image = "flesh2leather_needle.png"
})

-- Crafting sewed flesh
minetest.register_craft({
    type = "shapeless",
    output = "flesh2leather:sewed_flesh",
    recipe = {
        "mcl_mobitems:rotten_flesh",
        "mcl_mobitems:rotten_flesh",
        "mcl_mobitems:string",
        "flesh2leather:needle",
    }
})

-- Crafting needle
minetest.register_craft({
    output = "flesh2leather:needle 4",
    recipe = {
        { "mcl_core:iron_nugget" },
        { "mcl_core:iron_nugget" },
    },
})

-- Cooking recipe
minetest.register_craft({
    type = "cooking",
    output = "mcl_mobitems:leather",
    recipe = "flesh2leather:sewed_flesh"
})
