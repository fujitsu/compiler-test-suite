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
  TYPE IS (extd_type)
  cptr%y = 0
  print *,"PASS"
  CLASS IS(base_type)
  cptr%x = 1
  print *,"FAIL"
  ClASs DeFAulT
  print *,"FAIL"
end select label
end
