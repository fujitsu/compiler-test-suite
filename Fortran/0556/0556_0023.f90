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
function func(cptr2)
class(base_type), pointer :: cptr2, func
type(extd_type), target :: tg

select type (cptr2)
TYPE IS(extd_type)
cptr2%y = 1
tg%y = cptr2%y
func => tg
end select

if (tg%y == 1) then
  print *,"PASS"
else
  print *,"FAIL"
endif 
end function func
end
