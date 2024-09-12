module mod
     integer       ,target :: tt
     type ty1
          procedure(sub),nopass,pointer :: pp=>sub
     end type
     type(ty1) :: str
     contains
     subroutine sub
      if(associated(str%pp).neqv..true.)print*,"101"
         print *,"PASS"
      end subroutine sub
 end module mod

use mod
call sub
call str%pp()
end
      

