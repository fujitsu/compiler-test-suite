type ty1
 integer,allocatable :: a(:)
end type
type(ty1),pointer :: str => null()
if (associated(str))print *,'err'
print *,'pass'
end
