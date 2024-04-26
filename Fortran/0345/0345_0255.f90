
module xx
contains
 recursive subroutine sub()
   print *,'1'
   call ent1()
   print *,'55555'
   return
  entry ent3()
   print *,'333'
 end subroutine
 subroutine sub2()
   print *,'error'
  entry ent1()
   print *,'22'
   call ent3()
   print *,'4444'
 end subroutine
end

use xx
call sub
print *,'pass'
end
