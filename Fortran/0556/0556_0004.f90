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
rptr => func(cptr,et)
select type(rptr)
type is (extd_type)
if (rptr%y .EQ. 0) then
  print *,"PASS"
else 
  print *,"FAIL"
end if 
end select

contains
class(base_type) function func(cptr2,tg)
class(base_type), pointer :: cptr2
pointer :: func
type (extd_type), target ::  tg

select type (cptr2)
type is (extd_type)
cptr2%x = 0
tg%y = cptr2%x
end select

func=>tg

end function func
end
