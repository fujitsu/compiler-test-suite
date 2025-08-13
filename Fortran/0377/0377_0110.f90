module mod
type ty1
 integer :: a = 3333
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


type,extends(ty1) :: ty2
 type(tyy) :: sss
end type

type,extends(ty2) :: ty3
end type

type(ty3) :: str

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


call test01()
s3%s2%s1%a=2
s3%s2%s1a%a=1
write(67,na2)
write(66,na1)
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
