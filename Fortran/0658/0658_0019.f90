module mod
type ty1
sequence
 type (ty2),pointer :: aaa1
end type
type ty2
sequence
 type (ty3),pointer :: aaa2
end type
type ty3
sequence
 type (ty1),pointer :: aaa3
end type
type ty6
sequence
 integer   :: aaa6
end type
type ty5
sequence
 type (ty6) :: aaa5
end type
end
subroutine subbbf()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb2(sss2,sss3,sss4)
call subbb(sss,sss1,sss2,sss3,sss4)
call subbb4(sss4)
call subbb3(sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
end

subroutine subbbe()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb4(sss4)
call subbb2(sss2,sss3,sss4)
call subbb(sss,sss1,sss2,sss3,sss4)
call subbb3(sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
end

subroutine subbbd()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb4(sss4)
call subbb2(sss2,sss3,sss4)
call subbb3(sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
call subbb(sss,sss1,sss2,sss3,sss4)
end

subroutine subbbc()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb1(sss1,sss2,sss3,sss4)
call subbb4(sss4)
call subbb2(sss2,sss3,sss4)
call subbb3(sss3,sss4)
call subbb(sss,sss1,sss2,sss3,sss4)
end

subroutine subbbb()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb4(sss4)
call subbb3(sss3,sss4)
call subbb2(sss2,sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
call subbb(sss,sss1,sss2,sss3,sss4)
end

subroutine subbba()
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb(sss,sss1,sss2,sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
call subbb4(sss4)
call subbb2(sss2,sss3,sss4)
call subbb3(sss3,sss4)
end

subroutine subbb1(sss1,sss2,sss3,sss4)
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
end
subroutine subbb2(sss2,sss3,sss4)
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
end
subroutine subbb3(sss3,sss4)
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
end
subroutine subbb4(sss4)
use mod
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
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
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end
subroutine sub1(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end
subroutine sub2(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end
subroutine sub3(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end
subroutine sub4(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end
subroutine sub5(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
end

subroutine suba(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end
subroutine suba1(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end
subroutine suba2(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end
subroutine suba3(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end
subroutine suba4(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end
subroutine suba5(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty6) :: sss
end

subroutine subb(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end
subroutine subb1(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end
subroutine subb2(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end
subroutine subb3(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end
subroutine subb4(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end
subroutine subb5(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty3) :: sss
end

subroutine subc(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end
subroutine subc1(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end
subroutine subc2(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end
subroutine subc3(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end
subroutine subc4(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end
subroutine subc5(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty2) :: sss
end

subroutine subd(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end
subroutine subd1(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end
subroutine subd2(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end
subroutine subd3(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end
subroutine subd4(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end
subroutine subd5(sss)
use mod;common sss1,sss2,sss3,sss4
type (ty5) :: sss
end

use mod;common sss1,sss2,sss3,sss4
type (ty1) :: sss
type (ty6) :: sss1
type (ty3) :: sss2
type (ty2) :: sss3
type (ty5) :: sss4
call subbb(sss,sss1,sss2,sss3,sss4)
call subbb1(sss1,sss2,sss3,sss4)
call subbb2(sss2,sss3,sss4)
call subbb3(sss3,sss4)
call subbb4(sss4)
call subbba()
call subbbb()
call subbbc()
call subbbd()
call subbbe()
call subbbf()
print *,'pass'
end
