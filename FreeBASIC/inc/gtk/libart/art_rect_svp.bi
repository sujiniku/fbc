''
''
'' art_rect_svp -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __art_rect_svp_bi__
#define __art_rect_svp_bi__

#include once "gtk/libart/art_svp.bi"

declare sub art_drect_svp cdecl alias "art_drect_svp" (byval bbox as ArtDRect ptr, byval svp as ArtSVP ptr)
declare sub art_drect_svp_union cdecl alias "art_drect_svp_union" (byval bbox as ArtDRect ptr, byval svp as ArtSVP ptr)

#endif
