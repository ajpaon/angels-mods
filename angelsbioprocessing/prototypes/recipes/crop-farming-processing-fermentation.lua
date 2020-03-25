local function create_icon(name, number_icon_layer)
  return angelsmods.functions.add_icon_layer(angelsmods.functions.get_object_icons(name), number_icon_layer)
end

data:extend(
  {
    {
      type = "recipe",
      name = "fermentation-corn",
      category = "liquifying",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-corn", amount = 10},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 75}
      },
      always_show_products = "true",
      order = "a",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-corn.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "fermentation-fruit",
      category = "liquifying",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-fruit", amount = 10},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      always_show_products = "true",
      order = "b",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-fermentation-raw.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-fruit.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32
    },
    {
      type = "recipe",
      name = "aerobic-fermentation",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 50},
        {type = "item", name = "solid-compost", amount = 1, probability = 0.5}
      },
      main_product = "liquid-acetic-acid",
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-acetic-acid.png", 72 }
      }, "coh"),
      order = "c",
    },
    -- PROCESSING
    {
      type = "recipe",
      name = "anaerobic-fermentation",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-fermentation-raw", amount = 100}
      },
      results = {
        {type = "fluid", name = "gas-ethanol", amount = 50},
        {type = "item", name = "solid-compost", amount = 1, probability = 0.5}
      },
      main_product = "gas-ethanol",
      always_show_products = "true",
      icons = angelsmods.functions.create_gas_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-ethanol.png", 72 }
      }, "coh"),
      order = "d",
    },
    {
      type = "recipe",
      name = "ethanol-to-ethylene-synthesis",
      category = "chemistry",
      subgroup = "bio-processor-fermentation",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-ethanol", amount = 50},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 50}
      },
      results = {
        {type = "fluid", name = "gas-ethylene", amount = 50},
        {type = "fluid", name = "water-yellow-waste", amount = 50}
      },
      main_product = "gas-ethylene",
      always_show_products = "true",
      icons = angelsmods.functions.create_gas_recipe_icon({
        { "__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72 }
      }, "chh"),
      order = "e",
    },
    --BIO PLASTICS
    {
      type = "recipe",
      name = "liquid-acetic-acid-catalyst",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-methanol", amount = 70},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 30},
        {type = "fluid", name = "water-purified", amount = 50},
        {type = "item", name = "catalyst-metal-green", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 100},
        {type = "item", name = "catalyst-metal-carrier", amount = 1}
      },
      main_product = "liquid-acetic-acid",
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-acetic-acid.png", 72 }
      }, "coh"),
      order = "a",
    },
    {
      type = "recipe",
      name = "liquid-acetic-anhydride",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-acetic-acid", amount = 100},
        {type = "fluid", name = "gas-methanol", amount = 50},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-acetic-anhydride", amount = 150}
      },
      main_product = "liquid-acetic-anhydride",
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-acetic-anhydride.png", 72 }
      }, "coh"),
      order = "b",
    },
    {
      type = "recipe",
      name = "liquid-acetate-mixture",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 10},
        {type = "fluid", name = "liquid-acetic-acid", amount = 40},
        {type = "fluid", name = "liquid-acetic-anhydride", amount = 40},
        {type = "fluid", name = "liquid-sulfuric-acid", amount = 20}
      },
      results = {
        {type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 100}
      },
      main_product = "liquid-cellulose-acetate-mixture",
      always_show_products = "true",
      order = "c",
    },
    {
      type = "recipe",
      name = "liquid-cellulose-acetate",
      category = "chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-cellulose-acetate-mixture", amount = 50},
        {type = "fluid", name = "water-purified", amount = 20}
      },
      results = {
        {type = "fluid", name = "liquid-cellulose-acetate", amount = 50},
        {type = "fluid", name = "water-yellow-waste", amount = 20}
      },
      main_product = "liquid-cellulose-acetate",
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-cellulose-acetate.png", 72 }
      }, "coh"),
      order = "d",
    },
    {
      type = "recipe",
      name = "bio-plastic-1",
      category = "chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-cellulose-acetate", amount = 25},
        {type = "fluid", name = "gas-acetone", amount = 25}
      },
      results = {
        {type = "fluid", name = "liquid-plastic", amount = 15}
      },
      main_product = "liquid-plastic",
      always_show_products = "true",
      icons = create_icon("liquid-plastic", {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        icon_size = 32,
        tint = angelsmods.bioprocessing.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }),
      order = "e",
    },
    {
      type = "recipe",
      name = "liquid-propionic-acid-catalyst",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "gas-ethylene", amount = 50},
        {type = "fluid", name = "gas-carbon-monoxide", amount = 50},
        {type = "fluid", name = "water-purified", amount = 50},
        {type = "item", name = "catalyst-metal-green", amount = 1}
      },
      results = {
        {type = "fluid", name = "liquid-propionic-acid", amount = 50},
        {type = "item", name = "catalyst-metal-carrier", amount = 1}
      },
      main_product = "liquid-propionic-acid",
      always_show_products = "true",
      icons = angelsmods.functions.create_liquid_recipe_icon({
        { "__angelsbioprocessing__/graphics/icons/molecule-propionic-acid.png", 72 }
      }, "coh"),
      order = "f",
    },
    {
      type = "recipe",
      name = "bio-plastic-2",
      category = "advanced-chemistry",
      subgroup = "bio-plastic",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 10},
        {type = "fluid", name = "liquid-acetic-acid", amount = 25},
        {type = "fluid", name = "liquid-propionic-acid", amount = 25}
      },
      results = {
        {type = "fluid", name = "liquid-plastic", amount = 25}
      },
      main_product = "liquid-plastic",
      always_show_products = "true",
      icons = create_icon("liquid-plastic", {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        icon_size = 32,
        tint = angelsmods.bioprocessing.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      }),
      order = "g",
    }
  }
)
