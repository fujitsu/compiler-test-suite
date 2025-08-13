module mod
type ty1
 integer :: a
end type

type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type


type,extends(ty1) :: ty2
 type(tyy) :: sss
end type

type,extends(ty2) :: ty3
end type

type(ty3) :: str

namelist /na1/ str

type ttta
 type(ty1) :: s1
 type(ty1) :: s1a
end type

type tttb
 type(ttta) :: s2
end type
type(tttb) :: s3
namelist /na2/s3
end

use mod


call test01()
s3%s2%s1%a=2
s3%s2%s1a%a=1
write(63,na2)

str%a=2
str%sss%a=1
write(62,na1)
print *,"pass"
end

subroutine test01()
type ty1
 integer :: a =2
end type

type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type


type,extends(ty1) :: ty2
 type(tyy) :: sss = tyy(tya(ty1(1)))
end type

type,extends(ty2) :: ty3
end type

type(ty3) :: str
if (str%sss%a .ne.1) print *,'fail'
if (str%a .ne.2) print *,'fail'
end subroutine
