=== Description ===

compress.deflatelua is Lua module implementing DEFLATE [5,1], as well as
zlib [4] and gzip [6] decompression in pure Lua.

=== Example / Performance ===

  ./gunziplua lua-5.1.4.tar.gz

It's somewhat slow (as expected).  To decompress lua-5.1.4.tar.gz, it
takes about 9 seconds with CRC-checking enabled (4 with LuaJIT 1.x) or
3 seconds with CRC checking disabled (2 with LuaJIT 1.x).

=== Rationale ==

Possible reasons for this module include

  (1) for pedagogical reasons
  (2) to benchmark Lua
  (3) to bootstrap applications like LuaRocks/LuaDist
      that might not have a precompiled copy of gunzip, and
  (4) because DEFLATE has been implemented in other languages too
      [http://en.wikipedia.org/wiki/DEFLATE] (including Python,
      Perl, and Lisp).

=== Status ===

It should be robust, and no bugs are currently known.
It successfully decompresses gzip files.

This module currently only decompresses.  A compressor is not
implemented.

=== Dependencies ===

  * digest.crc32lua - CRC-32 checksum implemented in pure Lua
    github: http://github.com/davidm/lua-digest-crc32lua
  * bit.numberlua - bitwise operations implemented in pure Lua
    as numbers
    github: http://github.com/davidm/lua-bit-numberlua
    (note: if using a native bitwise operation library like
    LuaBitOp or 5.2.0-work4, you can replace bxor with
    bit.bxor in digest.crc32lua and them omit this library)
  * pythonic.optparse - Command-line processing resembling
    Python optparse module
    github: http://github.com/davidm/lua-pythonic-optparse

Tested on 5.1, 5.2.0-work4, and LuaJIT2 development version
(October 2010).

=== Conventions ===

The modules above follow a somewhat Perl CPAN-like naming convention.
Compare to Compress::Zlib::Perl [2], Digest::CRC32 [3],
and the Bit:: modules.

=== Author ===

David Manura.  See COPYRIGHT file.

=== References ===

[1] http://en.wikipedia.org/wiki/DEFLATE
[2] http://search.cpan.org/~nwclark/Compress-Zlib-Perl/Perl.pm
[3] http://search.cpan.org/~fays/Digest-Crc32/Crc32.pm
[4] http://tools.ietf.org/html/rfc1950
[5] http://tools.ietf.org/html/rfc1951
[6] http://tools.ietf.org/html/rfc1952
