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
select type (cptr)
end select
print *,"PASS"
end
