'' FreeBASIC binding for lzo-2.09
''
'' based on the C header files:
''   lzo1f.h -- public interface of the LZO1F compression algorithm
''
''   This file is part of the LZO real-time data compression library.
''
''   Copyright (C) 1996-2015 Markus Franz Xaver Johannes Oberhumer
''   All Rights Reserved.
''
''   The LZO library is free software; you can redistribute it and/or
''   modify it under the terms of the GNU General Public License as
''   published by the Free Software Foundation; either version 2 of
''   the License, or (at your option) any later version.
''
''   The LZO library is distributed in the hope that it will be useful,
''   but WITHOUT ANY WARRANTY; without even the implied warranty of
''   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
''   GNU General Public License for more details.
''
''   You should have received a copy of the GNU General Public License
''   along with the LZO library; see the file COPYING.
''   If not, write to the Free Software Foundation, Inc.,
''   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
''
''   Markus F.X.J. Oberhumer
''   <markus@oberhumer.com>
''   http://www.oberhumer.com/opensource/lzo/
''
'' translated to FreeBASIC by:
''   Copyright © 2015 FreeBASIC development team

#pragma once

#include once "crt/long.bi"
#include once "lzo/lzoconf.bi"

extern "C"

const __LZO1F_H_INCLUDED = 1
#define LZO1F_MEM_COMPRESS cast(lzo_uint32_t, cast(clong, 16384) * lzo_sizeof_dict_t)
const LZO1F_MEM_DECOMPRESS = 0

declare function lzo1f_decompress(byval src as const lzo_bytep, byval src_len as lzo_uint, byval dst as lzo_bytep, byval dst_len as lzo_uint ptr, byval wrkmem as lzo_voidp) as long
declare function lzo1f_decompress_safe(byval src as const lzo_bytep, byval src_len as lzo_uint, byval dst as lzo_bytep, byval dst_len as lzo_uint ptr, byval wrkmem as lzo_voidp) as long
declare function lzo1f_1_compress(byval src as const lzo_bytep, byval src_len as lzo_uint, byval dst as lzo_bytep, byval dst_len as lzo_uint ptr, byval wrkmem as lzo_voidp) as long
#define LZO1F_999_MEM_COMPRESS cast(lzo_uint32_t, (5 * cast(clong, 16384)) * sizeof(short))
declare function lzo1f_999_compress(byval src as const lzo_bytep, byval src_len as lzo_uint, byval dst as lzo_bytep, byval dst_len as lzo_uint ptr, byval wrkmem as lzo_voidp) as long

end extern
