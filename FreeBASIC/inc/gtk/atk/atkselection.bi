''
''
'' atkselection -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __atkselection_bi__
#define __atkselection_bi__

#include once "gtk/atk/atkobject.bi"

type AtkSelection as _AtkSelection
type AtkSelectionIface as _AtkSelectionIface

type _AtkSelectionIface
	parent as GTypeInterface
	add_selection as function cdecl(byval as AtkSelection ptr, byval as gint) as gboolean
	clear_selection as function cdecl(byval as AtkSelection ptr) as gboolean
	ref_selection as function cdecl(byval as AtkSelection ptr, byval as gint) as AtkObject
	get_selection_count as function cdecl(byval as AtkSelection ptr) as gint
	is_child_selected as function cdecl(byval as AtkSelection ptr, byval as gint) as gboolean
	remove_selection as function cdecl(byval as AtkSelection ptr, byval as gint) as gboolean
	select_all_selection as function cdecl(byval as AtkSelection ptr) as gboolean
	selection_changed as sub cdecl(byval as AtkSelection ptr)
	pad1 as AtkFunction
	pad2 as AtkFunction
end type

declare function atk_selection_get_type cdecl alias "atk_selection_get_type" () as GType
declare function atk_selection_add_selection cdecl alias "atk_selection_add_selection" (byval selection as AtkSelection ptr, byval i as gint) as gboolean
declare function atk_selection_clear_selection cdecl alias "atk_selection_clear_selection" (byval selection as AtkSelection ptr) as gboolean
declare function atk_selection_ref_selection cdecl alias "atk_selection_ref_selection" (byval selection as AtkSelection ptr, byval i as gint) as AtkObject ptr
declare function atk_selection_get_selection_count cdecl alias "atk_selection_get_selection_count" (byval selection as AtkSelection ptr) as gint
declare function atk_selection_is_child_selected cdecl alias "atk_selection_is_child_selected" (byval selection as AtkSelection ptr, byval i as gint) as gboolean
declare function atk_selection_remove_selection cdecl alias "atk_selection_remove_selection" (byval selection as AtkSelection ptr, byval i as gint) as gboolean
declare function atk_selection_select_all_selection cdecl alias "atk_selection_select_all_selection" (byval selection as AtkSelection ptr) as gboolean

#endif
