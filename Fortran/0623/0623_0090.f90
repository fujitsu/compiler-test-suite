module mod
type ty1
 integer :: i
 type(ty1),pointer :: str
end type
contains
function ifun()
type(ty1) :: ifun
ifun=ty1(1,null())
end function
end

use mod
procedure(type(ty1)),pointer :: sss
if (1.eq.2) then
sss=>ifun
endif
print *,'pass'
end

subroutine ssssaaaaa()
      type typ0
       type(typ0),pointer :: p
      end type
      type typ00
       procedure(type(typ0)),pointer,nopass :: prc02
      end type

      type (typ00) :: t1

      call csub1(t1)

      contains
       subroutine csub1(t1)
        type (typ00) :: t1
       end subroutine
      end
