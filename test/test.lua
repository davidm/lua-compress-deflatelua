-- tests of lua-compress-deflatelua

package.path = '../../lua-digest-crc32lua/module/lmod/?.lua;' .. package.path
package.path = '../../lua-pythonic-optparse/module/lmod/?.lua;' .. package.path
package.path = '../../lua-bit-numberlua/module/lmod/?.lua;' .. package.path
package.path = '../../lua-compress-deflatelua/module/lmod/?.lua;' .. package.path

deflate = require("compress.deflatelua")

local output = {}
deflate.inflate_zlib {
  input = "\120\156\203\072\205\201\201\087\040\207\047\202\073\001\000\026\011\004\093",
  output = function(byte) output[#output+1] = string.char(byte) end
}
assert(table.concat(output) == "hello world")

local output = {}
deflate.gunzip {
  input = "\031\139\008\000\217\124\100\077\000\003\203\072\205\201\201\087\040\207\047\202\073\001\000\133\017\074\013\011\000\000\000",
  output = function(byte) output[#output+1] = string.char(byte) end
}
assert(table.concat(output) == "hello world")

print 'DONE'

