subroutine zz
   print *,'####'
end subroutine

module xx
contains
 subroutine sub()
   print *,'error'
  entry ent0()
   print *,'#'
   call ent1()
   print *,'#######'
 end subroutine
 subroutine sub2()
   print *,'error'
  entry ent1()
   print *,'##'
   call ent2()
   print *,'######'
 end subroutine
 subroutine sub3()
   print *,'error'
   print *,'##'
  entry ent2()
   print *,'###'
   print *,'#####'
 end subroutine
end

use xx
call ent0
print *,'pass'
end
