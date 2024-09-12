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
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
a=2
x=1
allocate(str)
sss=ty2(str)
end

subroutine test02()
type ty1
sequence
end type

type(ty1),allocatable :: str,vvv
 integer :: a
type ty2
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
allocate(vvv)
allocate(str,source=vvv)
sss=ty2(str)
end

subroutine test03()
type ty1
sequence
end type

type(ty1),allocatable :: str
 integer :: x
type ty2
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
x=1
allocate(str)
sss=ty2(str)
end

