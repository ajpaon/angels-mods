local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS (bobs mods are listed alphabetically)
if angelsmods.industries.components then
  -----------------------------------------------------------------------------
  -- BOB ASSEMBLY -------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then -- electronic assemblers
    OV.patch_recipes(
      {
        { name = "circuit-grey-board", category = "electronics" },
        { name = "circuit-grey-board-alternative", category = "electronics" },
        { name = "circuit-red-board", category = "electronics" },
        { name = "circuit-green-board", category = "electronics-machine" },
        { name = "circuit-orange-board", category = "electronics-machine" },
        { name = "circuit-blue-board", category = "electronics-machine" },
        --{ name = "circuit-yellow-board", category = "electronics-machine" },

        { name = "circuit-grey", category = "electronics" },
        { name = "circuit-red", category = "electronics" },
        { name = "circuit-green", category = "electronics-machine" },
        { name = "circuit-orange", category = "electronics-machine" },
        { name = "circuit-blue", category = "electronics-machine" },
        { name = "circuit-yellow", category = "electronics-machine" },

        { name = "circuit-red-loaded", category = "electronics" },
        { name = "circuit-green-loaded", category = "electronics-machine" },
        { name = "circuit-orange-loaded", category = "electronics-machine" },
        { name = "circuit-blue-loaded", category = "electronics-machine" },
        { name = "circuit-yellow-loaded", category = "electronics-machine" },

        { name = "circuit-resistor", category = "electronics" },
        { name = "circuit-transistor", category = "electronics-machine" },
        { name = "circuit-microchip", category = "electronics-machine" },
        { name = "circuit-transformer", category = "electronics-machine" },
        { name = "circuit-cpu", category = "electronics-machine" },
        { name = "electronic-parts-resistor", category = "electronics-machine" },
        { name = "electronic-parts-transistor", category = "electronics-machine" },
        { name = "electronic-parts-microchip", category = "electronics-machine" },
        { name = "electronic-parts-transformer", category = "electronics-machine" },
        { name = "electronic-parts-cpu", category = "electronics-machine" },

        { name = "block-electronics-0", category = "electronics" },
        { name = "block-electronics-1", category = "electronics" },
        { name = "block-electronics-2", category = "electronics-machine" },
        { name = "block-electronics-3", category = "electronics-machine" },
        { name = "block-electronics-4", category = "electronics-machine" },
        { name = "block-electronics-5", category = "electronics-machine" },
      }
    )
  end

  -----------------------------------------------------------------------------
  -- BOB ELECTRONICS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobelectronics"] then
    OV.disable_recipe("wooden-board-paper")
    OV.disable_recipe("superior-circuit-board")
  end
  -----------------------------------------------------------------------------
  -- BOB REVAMP ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobrevamp"] then
    -- add 1000 heat shields to rocket
    OV.patch_recipes(
      {
        {
          name = "angels-rocket-ion-thruster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 20}
          }
        },
        {
          name = "angels-rocket-ion-booster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 50}
          }
        },
        {
          name = "angels-rocket-hull",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 25}
          }
        },
      }
    )
    OV.add_prereq("angels-rocket-ion-thruster", "heat-shield")
    OV.add_prereq("angels-rocket-hull", "heat-shield")
  end

  OV.execute()
end
-----------------------------------------------------------------------------
-- BOB MODULES --------------------------------------------------------------
-----------------------------------------------------------------------------
if mods["bobmodules"] then
  --replace green with orange boards on logic step
  local module_recs={}
  for _,type in pairs({"speed","effectivity","productivity","pollution-clean","pollution-create"}) do
    table.insert(module_recs,{
      name = type.."-processor-2",
      ingredients = {
        { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"}
      }
    })
  end
  OV.patch_recipes(module_recs)
end