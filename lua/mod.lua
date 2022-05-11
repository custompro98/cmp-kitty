local mod = {
  ctrl = { detail = "The ctrl key on your keyboard." },
  alt = { detail = "The alt/option key on your keyboard." },
  shift = { detail = "The shift key on your keyboard." },
  cmd = { detail = "The command key on your keyboard." },
  super = { detail = "The super key on your keyboard." },
  hyper = { detail = "" },
  meta = { detail = "" },
  kitty_mod = {
    detail = [[
E.g. kitty_mod ctrl+shift

The value of kitty_mod is used as the modifier for all default shortcuts, you can change it in your kitty.conf to change the modifiers for all the default shortcuts.
]]
  },
}

return mod
