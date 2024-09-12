program main
type ::  base_type
  integer :: x
end type base_type
type, extends(base_type) :: extd_type
  integer :: y
end type extd_type
type (extd_type), target ::  et
class(*), pointer :: cptr
cptr=>et
label: select type (cptr)
  TYPE IS (extd_type) label
  cptr%y = 0
    if (cptr%y .EQ. 0) then
    print *,"PASS"
  else
    print *,"FAIL"
  end if
  CLASS IS(base_type) label
  cptr%x = 1
  print *,"FAIL"
end select label
end
