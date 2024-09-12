program main
implicit class(base_type) (c)
type base_type
 integer :: x
end type base_type
type (base_type), target ::  bt
pointer :: cptr1,cptr2
cptr1=>bt
cptr2=>func(cptr1)

contains
function func(cptr3) result (cptr4)
implicit class(extd_type)(r)
pointer :: cptr3
pointer::cptr4
pointer :: rptr

type extd_type
 integer :: y
end type extd_type
type(extd_type),target::et
type(base_type),target::bt1
rptr=>et
cptr3=>bt1
cptr4=>bt1

select type(rptr)
type is (extd_type)
rptr%y =1 
if (rptr%y .EQ. 1) print *,"PASS"
end select

end function func
end
