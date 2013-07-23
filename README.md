Description
-----------

`compress.deflatelua` is a library implementing [DEFLATE], as well as
[zlib] and [gzip] decompression in pure [Lua].

Example usage
-------------

    ./gunziplua lua-5.1.4.tar.gz

Performance
-----------

It's somewhat slow (as expected).  To decompress `lua-5.1.4.tar.gz`, it
takes about 9 seconds with CRC-checking enabled (4 with LuaJIT 1.x) or
3 seconds with CRC checking disabled (2 with LuaJIT 1.x).

Rationale
---------

Possible reasons for this module include:

1. for pedagogical reasons
2. to benchmark Lua
3. to bootstrap applications like LuaRocks/LuaDist
   that might not have a precompiled copy of gunzip, and
4. because [DEFLATE] has been implemented in other languages too,
   including Python, Perl, and Lisp.

Status
------

It should be robust and there are no known bugs. It successfully
decompresses gzip files but there is currently no compressor implementation.

Dependencies
------------

* [digest.crc32lua] - CRC-32 checksum implemented in pure Lua
* [bit.numberlua] - bitwise operations implemented in pure Lua as numbers
  (note: if using a native bitwise operation library, you can replace
  `bxor` as appropriate in `digest.crc32lua` and omit this library)
* [pythonic.optparse] - command-line processing resembling the Python
  optparse module

Conventions
-----------

The modules above follow a somewhat Perl CPAN-like naming convention.
Compare to [`Compress::Zlib::Perl`], [`Digest::CRC32`] and the `Bit::`
modules.

Author
------

David Manura.  See COPYRIGHT file.


[DEFLATE]: http://tools.ietf.org/html/rfc1951
[zlib]: http://tools.ietf.org/html/rfc1950
[gzip]: http://tools.ietf.org/html/rfc1952
[Lua]: http://www.lua.org/
[digest.crc32lua]: http://github.com/davidm/lua-digest-crc32lua
[bit.numberlua]: http://github.com/davidm/lua-bit-numberlua
[pythonic.optparse]: http://github.com/davidm/lua-pythonic-optparse
[`Compress::Zlib::Perl`]: http://search.cpan.org/~nwclark/Compress-Zlib-Perl/Perl.pm
[`Digest::CRC32`]: http://search.cpan.org/~fays/Digest-Crc32/Crc32.pm
