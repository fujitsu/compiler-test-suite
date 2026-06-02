call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test01()
type ty1
sequence
end type 

type(ty1) :: str
 integer :: a
 integer :: x
common /com1/ x,str,a
type ty2
 integer :: x
 type(ty1) :: str(10)
 integer :: a
end type
type (ty2) ::sss
a=2
x=1
sss=ty2(x,str,a)
if (sss%a.ne.2) print *,'fail'
end

subroutine test02()
type ty1
sequence
end type

type(ty1) :: str
 integer :: a
common /com2/ str,a
type ty2
 type(ty1) :: str(10)
 integer :: a
end type
type (ty2) ::sss
a=2
sss=ty2(str,a)
if (sss%a.ne.2) print *,'fail'
end

subroutine test03()
type ty1
sequence
end type

type(ty1) :: str
 integer :: x
common /com3/ x,str
type ty2
 integer :: x
 type(ty1) :: str(10)
end type
type (ty2) ::sss
x=1
sss=ty2(x,str)
if (sss%x.ne.1) print *,'fail'
end

