subroutine zz
   print *,'####'
end subroutine

module xx
contains
 subroutine sub()
   print *,'#'
   call ent1()
   print *,'#######'
 end subroutine
 subroutine sub2()
   print *,'##'
  entry ent1()
   print *,'##'
   call ent2()
   print *,'######'
 end subroutine
 subroutine sub3()
   print *,'##'
  entry ent2()
   print *,'###'
   call zz()
   print *,'#####'
 end subroutine
end

use xx
call sub
print *,'pass'
end
