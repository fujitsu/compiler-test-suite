program main
type base_type
 integer :: x
end type base_type
type, extends(base_type) :: extd_type
  integer :: y
end type extd_type
type (extd_type), target ::  et
class(base_type), pointer :: cptr,rptr
cptr=>et
rptr => func(cptr)

contains
function func(cptr2) result(cptr3)
class(base_type), pointer :: cptr2
class(extd_type), pointer :: cptr3
type (extd_type), target ::  tg

cptr3=>tg

select type (cptr2)
class is (base_type)
cptr2%x = 0
cptr3%y = cptr2%x
class is (extd_type)
cptr2%y = 1
cptr3%y = cptr2%y
end select


if (cptr3%y .EQ. 1) then
  print *,"PASS"
else 
  print *,"FAIL"
end if 
end function func
end
