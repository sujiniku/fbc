''
''
'' atkcomponent -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __atkcomponent_bi__
#define __atkcomponent_bi__

#include once "gtk/atk/atkobject.bi"
#include once "gtk/atk/atkutil.bi"

type AtkComponent as _AtkComponent
type AtkComponentIface as _AtkComponentIface
type AtkFocusHandler as sub cdecl(byval as AtkObject ptr, byval as gboolean)
type AtkRectangle as _AtkRectangle

type _AtkRectangle
	x as gint
	y as gint
	width as gint
	height as gint
end type

declare function atk_rectangle_get_type cdecl alias "atk_rectangle_get_type" () as GType

type _AtkComponentIface
	parent as GTypeInterface
	add_focus_handler as function cdecl(byval as AtkComponent ptr, byval as AtkFocusHandler) as guint
	contains as function cdecl(byval as AtkComponent ptr, byval as gint, byval as gint, byval as AtkCoordType) as gboolean
	ref_accessible_at_point as function cdecl(byval as AtkComponent ptr, byval as gint, byval as gint, byval as AtkCoordType) as AtkObject
	get_extents as sub cdecl(byval as AtkComponent ptr, byval as gint ptr, byval as gint ptr, byval as gint ptr, byval as gint ptr, byval as AtkCoordType)
	get_position as sub cdecl(byval as AtkComponent ptr, byval as gint ptr, byval as gint ptr, byval as AtkCoordType)
	get_size as sub cdecl(byval as AtkComponent ptr, byval as gint ptr, byval as gint ptr)
	grab_focus as function cdecl(byval as AtkComponent ptr) as gboolean
	remove_focus_handler as sub cdecl(byval as AtkComponent ptr, byval as guint)
	set_extents as function cdecl(byval as AtkComponent ptr, byval as gint, byval as gint, byval as gint, byval as gint, byval as AtkCoordType) as gboolean
	set_position as function cdecl(byval as AtkComponent ptr, byval as gint, byval as gint, byval as AtkCoordType) as gboolean
	set_size as function cdecl(byval as AtkComponent ptr, byval as gint, byval as gint) as gboolean
	get_layer as function cdecl(byval as AtkComponent ptr) as AtkLayer
	get_mdi_zorder as function cdecl(byval as AtkComponent ptr) as gint
	bounds_changed as sub cdecl(byval as AtkComponent ptr, byval as AtkRectangle ptr)
	pad2 as AtkFunction
end type

declare function atk_component_get_type cdecl alias "atk_component_get_type" () as GType
declare function atk_component_add_focus_handler cdecl alias "atk_component_add_focus_handler" (byval component as AtkComponent ptr, byval handler as AtkFocusHandler) as guint
declare function atk_component_contains cdecl alias "atk_component_contains" (byval component as AtkComponent ptr, byval x as gint, byval y as gint, byval coord_type as AtkCoordType) as gboolean
declare function atk_component_ref_accessible_at_point cdecl alias "atk_component_ref_accessible_at_point" (byval component as AtkComponent ptr, byval x as gint, byval y as gint, byval coord_type as AtkCoordType) as AtkObject ptr
declare sub atk_component_get_extents cdecl alias "atk_component_get_extents" (byval component as AtkComponent ptr, byval x as gint ptr, byval y as gint ptr, byval width as gint ptr, byval height as gint ptr, byval coord_type as AtkCoordType)
declare sub atk_component_get_position cdecl alias "atk_component_get_position" (byval component as AtkComponent ptr, byval x as gint ptr, byval y as gint ptr, byval coord_type as AtkCoordType)
declare sub atk_component_get_size cdecl alias "atk_component_get_size" (byval component as AtkComponent ptr, byval width as gint ptr, byval height as gint ptr)
declare function atk_component_get_layer cdecl alias "atk_component_get_layer" (byval component as AtkComponent ptr) as AtkLayer
declare function atk_component_get_mdi_zorder cdecl alias "atk_component_get_mdi_zorder" (byval component as AtkComponent ptr) as gint
declare function atk_component_grab_focus cdecl alias "atk_component_grab_focus" (byval component as AtkComponent ptr) as gboolean
declare sub atk_component_remove_focus_handler cdecl alias "atk_component_remove_focus_handler" (byval component as AtkComponent ptr, byval handler_id as guint)
declare function atk_component_set_extents cdecl alias "atk_component_set_extents" (byval component as AtkComponent ptr, byval x as gint, byval y as gint, byval width as gint, byval height as gint, byval coord_type as AtkCoordType) as gboolean
declare function atk_component_set_position cdecl alias "atk_component_set_position" (byval component as AtkComponent ptr, byval x as gint, byval y as gint, byval coord_type as AtkCoordType) as gboolean
declare function atk_component_set_size cdecl alias "atk_component_set_size" (byval component as AtkComponent ptr, byval width as gint, byval height as gint) as gboolean

#endif
