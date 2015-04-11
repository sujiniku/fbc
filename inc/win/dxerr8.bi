'' FreeBASIC binding for mingw-w64-v4.0.1

#pragma once

#inclib "dxerr8"

#include once "_mingw_unicode.bi"

extern "Windows"

#define __WINE_DXERR8_H
declare function DXGetErrorString8A(byval hr as HRESULT) as const zstring ptr
declare function DXGetErrorString8W(byval hr as HRESULT) as const wstring ptr

#ifdef UNICODE
	#define DXGetErrorString8 DXGetErrorString8W
#else
	#define DXGetErrorString8 DXGetErrorString8A
#endif

declare function DXGetErrorDescription8A(byval hr as HRESULT) as const zstring ptr
declare function DXGetErrorDescription8W(byval hr as HRESULT) as const wstring ptr

#ifdef UNICODE
	#define DXGetErrorDescription8 DXGetErrorDescription8W
#else
	#define DXGetErrorDescription8 DXGetErrorDescription8A
#endif

declare function DXTraceA(byval strFile as const zstring ptr, byval dwLine as DWORD, byval hr as HRESULT, byval strMsg as const zstring ptr, byval bPopMsgBox as WINBOOL) as HRESULT
declare function DXTraceW(byval strFile as const zstring ptr, byval dwLine as DWORD, byval hr as HRESULT, byval strMsg as const wstring ptr, byval bPopMsgBox as WINBOOL) as HRESULT

#ifdef UNICODE
	#define DXTrace DXTraceW
#else
	#define DXTrace DXTraceA
#endif

#define DXTRACE_MSG(str) __MSABI_LONG(0)
#define DXTRACE_ERR(str, hr) (hr)
#define DXTRACE_ERR_NOMSGBOX(str, hr) (hr)

end extern
