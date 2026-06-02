call test01()
call test02()
call test03()
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

subroutine test02()
type ty1
sequence
end type

type(ty1),allocatable :: str
 integer :: a
type ty2
 type(ty1),allocatable :: str
 integer :: a
end type
type (ty2) ::sss
allocate(str)
a=2
sss=ty2(str,a)
if (sss%a.ne.2) print *,'fail'
end

subroutine test03()
type ty1
sequence
end type

type(ty1),allocatable :: str
 integer :: x
type ty2
 integer :: x
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
x=1
allocate(str)
sss=ty2(x,str)
if (sss%x.ne.1) print *,'fail'
end

