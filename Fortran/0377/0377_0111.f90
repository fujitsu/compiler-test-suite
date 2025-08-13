module mod
type ty1a
 integer :: a = 3333
end type

type,extends(ty1a) :: tyaa
end type
type,extends(tyaa) :: tyya
end type


type,extends(ty1a) :: ty2a
 type(tyya) :: sss
end type

type,extends(ty2a) :: ty3a
end type

type(ty3a) :: stra

namelist /na1/ stra

type ttta
 type(ty1a) :: s1
 type(ty1a) :: s1a
end type

type tttb
 type(ttta) :: s2
end type
type(tttb) :: s3
namelist /na2/s3
save
end

module mod2
save
type ty1
 integer :: a = 3333
end type

type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type



type ty12
 integer :: a2
end type

type,extends(ty12) :: tya2
end type
type,extends(tya2) :: tyy2
end type


type,extends(ty12) :: ty22
 type(tyy) :: sss2
end type

type,extends(ty22) :: ty32
end type

type(ty32) :: str2


end


use mod
use mod2

type,extends(ty1) :: ty2
 type(tyy) :: sss
end type

type,extends(ty2) :: ty3
end type

type(ty3) :: str

call test01()
s3%s2%s1%a=2
s3%s2%s1a%a=1
write(69,na2)

if (str%a .ne.3333) print *,'fail'
str%sss%a=1
if (str%sss%a .ne.1) print *,'fail'
write(68,na1)
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
