module mod
 contains
  subroutine sub(x)
   integer x
   x=1
  end subroutine
  function func(x) result(y)
   integer x,y
   y=x
  end function
end module

use mod
interface
  subroutine proc(x)
   integer x
  end subroutine
  function prcf(x) result(y)
   integer x,y
  end function
end interface
procedure(proc), pointer :: p
procedure(prcf), pointer :: pf
integer i
p => proc

p => sub
pf => func
call p(i)
if (i.ne.1) print *,'fail'
i=pf(i)
if (i.ne.1) print *,'fail'

print *,'pass'

end

subroutine proc(x)
 integer x
 x=1
end subroutine
function prcf(x) result(y)
 integer x,y
 y=x
end function
