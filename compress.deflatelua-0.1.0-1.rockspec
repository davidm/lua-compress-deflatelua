package = "compress.deflatelua"
version = "0.1.0-1"
source = {
   url = "http://math2.org/download/lua-compress-deflatelua-0.1.tar.gz",
}
description = {
   summary    = "'compress.deflatelua' DEFLATE (RFC1951)/gunzip implemented in pure Lua",
   detailed   = [[
      Note: use lzlib instead for higher performance.
   ]],
   license    =  "MIT/X11",
   homepage   = "http://lua-users.org/wiki/ModuleCompressDeflateLua",
   maintainer = "David Manura <http://lua-users.org/wiki/DavidManura>",
}
dependencies = {
}
build = {
  type = "none",
  install = {
     lua = {
        ["compress.deflatelua"] = "module/lmod/compress/deflatelua.lua",
        ["bin.gunziplua"] = "module/lmod/bin/gunziplua.lua",
     },
     bin = {
        ["gunziplua"] = "bin/gunziplua"
     }
  }
}

