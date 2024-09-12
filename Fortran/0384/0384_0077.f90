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
type ty2
 type(ty1),allocatable :: str
end type
type (ty2) ::sss
type,extends(ty2) :: ty3
end type
type(ty3) :: zzz
a=2
x=1
allocate(str)
sss=ty2(str)
allocate(zzz%str)
zzz=ty3(str)
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

