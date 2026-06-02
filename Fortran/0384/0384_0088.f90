interface 
 function ifun(i)
 end function 
end interface
type ty0
 integer :: a
 procedure(ifun),nopass,pointer :: jfunc
end type

type,extends(ty0) :: tyb
end type
type,extends(tyb) :: tyx
end type


type,extends(ty0):: ty1
 type(tyx),pointer :: ppp(:)
end type

type,extends(ty1) :: tya
 type(ty2),pointer:: fff
end type
type,extends(tya) :: tyy
end type


type,extends(ty1) :: ty2
 type(tyy),pointer:: sss(:)
 type(ty2),pointer:: vvv
 type(tyy),pointer:: rrr
end type

type,extends(ty2) :: ty3
end type
type,extends(ty3) :: ty4
end type

type(ty4) :: str(1)
 procedure(ifun),pointer :: jfunc
allocate(str(1)%sss(1))
allocate(str(1)%sss(1)%fff)
allocate(str(1)%sss(1)%fff%vvv)
allocate(str(1)%sss(1)%fff%vvv%vvv)
allocate(str(1)%sss(1)%fff%vvv%vvv%vvv)
allocate(str(1)%sss(1)%fff%vvv%sss(1))
allocate(str(1)%sss(1)%fff%vvv%sss(1)%fff)
allocate(str(1)%sss(1)%fff%vvv%sss(1)%fff%vvv)
allocate(str(1)%sss(1)%fff%vvv%sss(1)%fff%vvv%vvv)
allocate(str(1)%sss(1)%fff%vvv%vvv%sss(1))
allocate(str(1)%sss(1)%fff%vvv%vvv%sss(1)%fff)
allocate(str(1)%sss(1)%fff%vvv%vvv%sss(1)%fff%vvv)
allocate(str(1)%sss(1)%fff%sss(1))
allocate(str(1)%vvv)
allocate(str(1)%vvv%vvv)
allocate(str(1)%sss(1)%ppp(1))
allocate(str(1)%vvv%sss(1))
allocate(str(1)%vvv%sss(1)%ppp(1))
str(1)%sss(1)%fff%vvv%sss(1)%fff%vvv%vvv%a=1

str(1)%jfunc=>ifun
if (str(1)%jfunc(100).ne.100) print *,'fail'

str(1)%sss(1)%ppp(1)%a=1
jfunc=>ifun
str(1)%sss(1)%ppp(1)%jfunc=>ifun
if (str(1)%sss(1)%ppp(1)%jfunc(100).ne.100) print *,'fail'
str(1)%sss(1)%fff%sss(1)%a=1
str(1)%vvv%a=1
str(1)%vvv%vvv%a=1
str(1)%vvv%sss(1)%ppp(1)%a=1
str(1)%sss(1)%ty1%ppp(1)%a=1
str(1)%sss(1)%tya%ppp(1)%a=1
str(1)%sss(1)%tya%ty1%ppp(1)%a=1
str(1)%ty2%sss(1)%ty1%ppp(1)%a=1
str(1)%ty2%sss(1)%tya%ppp(1)%a=1
str(1)%ty2%sss(1)%ppp(1)%a=1
str(1)%ty2%sss(1)%tya%ty1%ppp(1)%a=1
str(1)%ty3%sss(1)%ppp(1)%a=1
str(1)%ty3%sss(1)%ty1%ppp(1)%a=1
str(1)%ty3%sss(1)%tya%ppp(1)%a=1
str(1)%ty3%sss(1)%tya%ty1%ppp(1)%a=1
str(1)%ty3%ty2%sss(1)%ty1%ppp(1)%a=1
str(1)%ty3%ty2%sss(1)%tya%ppp(1)%a=1
str(1)%ty3%ty2%sss(1)%ppp(1)%a=1
str(1)%ty3%ty2%sss(1)%tya%ty1%ppp(1)%a=1

str(1)%vvv%jfunc=>ifun
str(1)%vvv%vvv%jfunc=>ifun
str(1)%vvv%sss(1)%ppp(1)%jfunc=>ifun
str(1)%sss(1)%ty1%ppp(1)%jfunc=>ifun
str(1)%sss(1)%tya%ppp(1)%jfunc=>ifun
str(1)%sss(1)%tya%ty1%ppp(1)%jfunc=>ifun
str(1)%ty2%sss(1)%ty1%ppp(1)%jfunc=>ifun
str(1)%ty2%sss(1)%tya%ppp(1)%jfunc=>ifun
str(1)%ty2%sss(1)%ppp(1)%jfunc=>ifun
str(1)%ty2%sss(1)%tya%ty1%ppp(1)%jfunc=>ifun
str(1)%ty3%sss(1)%ppp(1)%jfunc=>ifun
str(1)%ty3%sss(1)%ty1%ppp(1)%jfunc=>ifun
str(1)%ty3%sss(1)%tya%ppp(1)%jfunc=>ifun
str(1)%ty3%sss(1)%tya%ty1%ppp(1)%jfunc=>ifun
str(1)%ty3%ty2%sss(1)%ty1%ppp(1)%jfunc=>ifun
str(1)%ty3%ty2%sss(1)%tya%ppp(1)%jfunc=>ifun
str(1)%ty3%ty2%sss(1)%ppp(1)%jfunc=>ifun
str(1)%ty3%ty2%sss(1)%tya%ty1%ppp(1)%jfunc=>ifun


str(1)%sss(1)%ppp(1)%tyb%a=1
str(1)%sss(1)%ty1%ppp(1)%tyb%a=1
str(1)%sss(1)%tya%ppp(1)%tyb%a=1
str(1)%sss(1)%tya%ty1%ppp(1)%tyb%a=1
str(1)%ty2%sss(1)%ty1%ppp(1)%tyb%a=1
str(1)%ty2%sss(1)%tya%ppp(1)%tyb%a=1
str(1)%ty2%sss(1)%ppp(1)%tyb%a=1
str(1)%ty2%sss(1)%tya%ty1%ppp(1)%tyb%a=1
str(1)%ty3%sss(1)%ppp(1)%tyb%a=1
str(1)%ty3%sss(1)%ty1%ppp(1)%tyb%a=1
str(1)%ty3%sss(1)%tya%ppp(1)%tyb%a=1
str(1)%ty3%sss(1)%tya%ty1%ppp(1)%tyb%a=1
str(1)%ty3%ty2%sss(1)%ty1%ppp(1)%tyb%a=1
str(1)%ty3%ty2%sss(1)%tya%ppp(1)%tyb%a=1
str(1)%ty3%ty2%sss(1)%ppp(1)%tyb%a=1
str(1)%ty3%ty2%sss(1)%tya%ty1%ppp(1)%tyb%a=1

str(1)%sss(1)%ppp(1)%ty0%a=1
str(1)%sss(1)%ty1%ppp(1)%ty0%a=1
str(1)%sss(1)%tya%ppp(1)%ty0%a=1
str(1)%sss(1)%tya%ty1%ppp(1)%ty0%a=1
str(1)%ty2%sss(1)%ty1%ppp(1)%ty0%a=1
str(1)%ty2%sss(1)%tya%ppp(1)%ty0%a=1
str(1)%ty2%sss(1)%ppp(1)%ty0%a=1
str(1)%ty2%sss(1)%tya%ty1%ppp(1)%ty0%a=1
str(1)%ty3%sss(1)%ppp(1)%ty0%a=1
str(1)%ty3%sss(1)%ty1%ppp(1)%ty0%a=1
str(1)%ty3%sss(1)%tya%ppp(1)%ty0%a=1
str(1)%ty3%sss(1)%tya%ty1%ppp(1)%ty0%a=1
str(1)%ty3%ty2%sss(1)%ty1%ppp(1)%ty0%a=1
str(1)%ty3%ty2%sss(1)%tya%ppp(1)%ty0%a=1
str(1)%ty3%ty2%sss(1)%ppp(1)%ty0%a=1
str(1)%ty3%ty2%sss(1)%tya%ty1%ppp(1)%ty0%a=1

str(1)%sss(1)%ppp(1)%tyb%ty0%a=1
str(1)%sss(1)%ty1%ppp(1)%tyb%ty0%a=1
str(1)%sss(1)%tya%ppp(1)%tyb%ty0%a=1
str(1)%sss(1)%tya%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty2%sss(1)%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty2%sss(1)%tya%ppp(1)%tyb%ty0%a=1
str(1)%ty2%sss(1)%ppp(1)%tyb%ty0%a=1
str(1)%ty2%sss(1)%tya%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty3%sss(1)%ppp(1)%tyb%ty0%a=1
str(1)%ty3%sss(1)%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty3%sss(1)%tya%ppp(1)%tyb%ty0%a=1
str(1)%ty3%sss(1)%tya%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty3%ty2%sss(1)%ty1%ppp(1)%tyb%ty0%a=1
str(1)%ty3%ty2%sss(1)%tya%ppp(1)%tyb%ty0%a=1
str(1)%ty3%ty2%sss(1)%ppp(1)%tyb%ty0%a=1
str(1)%ty3%ty2%sss(1)%tya%ty1%ppp(1)%tyb%ty0%a=1

if (str(1)%sss(1)%ppp(1)%a.ne.1) print *,'fail'
print *,"pass"
end
 function ifun(i)
  ifun=i
 end function 
