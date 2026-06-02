do k=1,3
call test01()
end do
print *,"pass"
end

subroutine test01()
type ty1
sequence
end type

type(ty1),allocatable :: str
 integer :: a
 integer :: x
type ty2
 integer :: x
 type(ty1),allocatable :: str
 integer :: a
end type
type (ty2) ::sss
a=2
x=1
allocate(str)
sss=ty2(x,str,a)
if (sss%a.ne.2) print *,'fail'
end
