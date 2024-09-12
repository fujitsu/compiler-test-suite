module mod1
 interface
   subroutine sub1()
   end
   function f1() result(ff1)
   integer :: ff1
   end
   subroutine sub2()
   end
 endinterface
 contains
   subroutine sub3()
   end subroutine
   subroutine sub4()
   end subroutine
   function f2() result(ff2)
   ff2=1
   end function
end module

use mod1
procedure (sub1),pointer ::a1
procedure (sub2),pointer ::a2
procedure (sub3),pointer ::a3
procedure (sub4),pointer ::a4
procedure (f1),pointer ::fun1
procedure (f2),pointer ::fun2
a1=>sub1
a2=>sub2
a3=>sub3
a4=>sub4
fun1=>f1
fun2=>f2
print *,"pass"
end

 subroutine sub1()
 end
 function f1() result(ff1)
  integer::ff1
  ff1=1
 end
 subroutine sub2()
 end
 subroutine sub3()
 end subroutine
 subroutine sub4()
 end subroutine
 function f2() result(ff2)
 ff2=1
 end function
