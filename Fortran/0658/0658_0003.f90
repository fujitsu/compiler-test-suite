type ty1
 integer,allocatable :: a(:)
end type
type(ty1),pointer :: str => null()
type tt
 integer :: aaa
end type
type ty2
 type(tt),allocatable :: a(:)
end type
type(ty2),pointer :: str2 => null()
type tt3
 integer,allocatable :: aaa(:)
end type
type ty3
 type(tt3) :: a(1)
end type
type(ty3),pointer :: str3 => null()
if (associated(str))print *,'err'
if (associated(str2))print *,'err'
if (associated(str3))print *,'err'
print *,'pass'
end
