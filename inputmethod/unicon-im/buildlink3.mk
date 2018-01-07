# $NetBSD: buildlink3.mk,v 1.9 2018/01/07 13:04:18 rillig Exp $

BUILDLINK_TREE+=	unicon-im

.if !defined(UNICON_IM_BUILDLINK3_MK)
UNICON_IM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.unicon-im+=	unicon-im>=1.2nb2
BUILDLINK_ABI_DEPENDS.unicon-im+=	unicon-im>=1.2nb4
BUILDLINK_PKGSRCDIR.unicon-im?=		../../inputmethod/unicon-im

.include "../../devel/pth/buildlink3.mk"
.endif # UNICON_IM_BUILDLINK3_MK

BUILDLINK_TREE+=	-unicon-im
