package = "compress.deflatelua"
version = "$(_VERSION)"
source = {
   url = "https://github.com/davidm/lua-compress-deflatelua/zipball/v$(_VERSION)",
}
description = {
   summary    = "'compress.deflatelua' DEFLATE (RFC1951)/gunzip implemented in pure Lua",
   detailed   = [[
      Note: use lzlib instead for higher performance.
   ]],
   license    =  "MIT/X11",
   homepage   = "http://lua-users.org/wiki/ModuleCompressDeflateLua",
       -- https://github.com/davidm/lua-compress-deflatelua
   maintainer = "David Manura <http://lua-users.org/wiki/DavidManura>",
}
dependencies = {
}
build = {
  type = "none",
  install = {
     lua = {
        ["compress.deflatelua"] = "lmod/compress/deflatelua.lua",
        ["bin.gunziplua"] = "lmod/bin/gunziplua.lua",
     },
     bin = {
        ["gunziplua"] = "bin/gunziplua"
     }
  }
}

