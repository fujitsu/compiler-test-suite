module mod2
 contains
 subroutine proc(x)
  integer x
  x=1
 end subroutine 
end module

module mod1
 contains
  subroutine sub(x)
   integer x
   x=1
  end subroutine
  function func(x) result(y)
   use mod2
   interface
     subroutine xxx(x)
      integer :: x
     end subroutine
   end interface
   integer x,y
   integer i
   procedure(xxx),pointer :: pp
   pp => sub
   pp => proc
   call pp(i)
   if (i.ne.1) print *,'fail'
   y=x
  end function
end module

use mod1

 print *,'pass'

end
subroutine xxx(x)
  integer :: x
  x=1
end subroutine
