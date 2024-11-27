use,intrinsic :: iso_c_binding

type,  bind(c) :: ty0
 integer :: i4
end type

type,  bind(c) :: ty1
 type (ty0)      :: t0
 integer(kind=4) :: i4
 logical(kind=1) :: l1
end type

type ty2
 integer :: i
 logical :: l
end type


type (ty1), target :: t1, t11(1)
type (ty2), target :: t2, t21(1)

type (ty1), pointer :: t1p, t1p2(:)
type (ty2), pointer :: t2p, t2p2(:)

type(c_ptr) :: cptr

cptr = c_loc(t1)
cptr = c_loc(t2)

cptr = c_loc(t11)
cptr = c_loc(t21)

cptr = c_loc(t1p)
cptr = c_loc(t2p)

cptr = c_loc(t1p2)
cptr = c_loc(t2p2)

end
