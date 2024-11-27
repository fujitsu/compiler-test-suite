module mod1
 public
 integer :: val1, val2, val3, val4
 contains
 subroutine sub1(val1)
   value :: val1
   val1=1
   print *,val1
 end subroutine
 subroutine sub2(val2)
   integer,value :: val2
   val2=2
   print *,val2
 end subroutine
 subroutine sub3(val3)
   value :: val3
   integer :: val3
   val3=3
   print *,val3
 end subroutine
 subroutine sub4(val4)
   integer :: val4
   value :: val4
   val4=3
   print *,val4
 end subroutine
end module
use mod1
print *,"pass"
end
