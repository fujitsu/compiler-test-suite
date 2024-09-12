subroutine test01()
type ty1
sequence
integer ::z
end type
type(ty1),allocatable :: str
type ty2
 integer :: x
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
allocate(str)
str%z=2
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,11
if (sss%str%z/=2)print *,12
if (str%z/=2)print *,13
deallocate(sss%str)
if (str%z/=2)print *,14
end

subroutine test02()
type ty1
sequence
integer ::z
end type
type(ty1),allocatable :: str
type ty2
 integer :: x
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
sss=ty2(1,str)
if (allocated(sss%str))print *,21
if (sss%x/=1)print *,12
if (allocated(sss%str))print *,22
end
do k=1,4
call test01()
call test02()
end do
print *,"pass"
end
