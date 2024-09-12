module mod
type ty1
sequence
 type (ty2),pointer :: aaa1
end type
type ty2
sequence
 type (ty5),pointer :: aaa2a
 type (ty3),pointer :: aaa2
end type
type ty3
sequence
 type (ty1),pointer :: aaa3
end type
type ty5
sequence
 type (ty6),pointer :: aaa5
end type
type ty6
sequence
 integer   ,pointer :: aaa6
end type
end
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb(sss,sss1,sss2,sss3,sss4)
print *,'pass'
end
subroutine subbb(sss,sss1,sss2,sss3,sss4)
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call sub(sss)
call sub1(sss)
call sub2(sss)
call sub3(sss)
call sub4(sss)
call sub5(sss)
call suba(sss1)
call suba1(sss1)
call suba2(sss1)
call suba3(sss1)
call suba4(sss1)
call suba5(sss1)
call subb(sss2)
call subb1(sss2)
call subb2(sss2)
call subb3(sss2)
call subb4(sss2)
call subb5(sss2)
call subc(sss3)
call subc1(sss3)
call subc2(sss3)
call subc3(sss3)
call subc4(sss3)
call subc5(sss3)
call subd(sss4)
call subd1(sss4)
call subd2(sss4)
call subd3(sss4)
call subd4(sss4)
call subd5(sss4)
end
subroutine sub(sss)
use mod
type (ty1) :: sss
end
subroutine sub1(sss)
use mod
type (ty1) :: sss
end
subroutine sub2(sss)
use mod
type (ty1) :: sss
end
subroutine sub3(sss)
use mod
type (ty1) :: sss
end
subroutine sub4(sss)
use mod
type (ty1) :: sss
end
subroutine sub5(sss)
use mod
type (ty1) :: sss
end

subroutine suba(sss)
use mod
type (ty6) :: sss
end
subroutine suba1(sss)
use mod
type (ty6) :: sss
end
subroutine suba2(sss)
use mod
type (ty6) :: sss
end
subroutine suba3(sss)
use mod
type (ty6) :: sss
end
subroutine suba4(sss)
use mod
type (ty6) :: sss
end
subroutine suba5(sss)
use mod
type (ty6) :: sss
end

subroutine subb(sss)
use mod
type (ty3) :: sss
end
subroutine subb1(sss)
use mod
type (ty3) :: sss
end
subroutine subb2(sss)
use mod
type (ty3) :: sss
end
subroutine subb3(sss)
use mod
type (ty3) :: sss
end
subroutine subb4(sss)
use mod
type (ty3) :: sss
end
subroutine subb5(sss)
use mod
type (ty3) :: sss
end

subroutine subc(sss)
use mod
type (ty2) :: sss
end
subroutine subc1(sss)
use mod
type (ty2) :: sss
end
subroutine subc2(sss)
use mod
type (ty2) :: sss
end
subroutine subc3(sss)
use mod
type (ty2) :: sss
end
subroutine subc4(sss)
use mod
type (ty2) :: sss
end
subroutine subc5(sss)
use mod
type (ty2) :: sss
end

subroutine subd(sss)
use mod
type (ty5) :: sss
end
subroutine subd1(sss)
use mod
type (ty5) :: sss
end
subroutine subd2(sss)
use mod
type (ty5) :: sss
end
subroutine subd3(sss)
use mod
type (ty5) :: sss
end
subroutine subd4(sss)
use mod
type (ty5) :: sss
end
subroutine subd5(sss)
use mod
type (ty5) :: sss
end
