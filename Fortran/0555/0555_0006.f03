program main
implicit class(*) (d)
type:: base_type
 integer :: x
end type base_type
type, extends(base_type) :: extd_type
 integer :: y
end type extd_type
type (extd_type),target::et
pointer :: dptr
dptr=>et

select type(dptr)
type is (extd_type)
dptr%x =1 
if (dptr%x .EQ. 1) print *,"PASS"
end select

end
