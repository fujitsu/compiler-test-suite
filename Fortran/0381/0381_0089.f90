subroutine test02()
integer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,21
end

do i=1,2
call test02()
end do
print *,"pass"
end
