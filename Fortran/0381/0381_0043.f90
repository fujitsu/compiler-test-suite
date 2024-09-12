subroutine test01()
integer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
str=12
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,11
if (sss%str/=12)print *,12
deallocate(sss%str)
end

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
call test01()
call test02()
end do
print *,"pass"
end
