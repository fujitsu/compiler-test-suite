subroutine test01()
complex :: str
type ty2
 integer :: x
 complex,allocatable :: str
end type
type (ty2) ::sss
str=(11,12)
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,11
if (abs(sss%str-(11,12))>0.001)print *,12
if (loc(sss%str)==loc(str))print *,13
deallocate(sss%str)
end

subroutine test02()
complex :: str
type ty2
 integer :: x
 complex,allocatable :: str
end type
type (ty2) ::sss
str=(11,12)
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,21
end
do i=1,3
call test01()
call test02()
end do
print *,"pass"
end
