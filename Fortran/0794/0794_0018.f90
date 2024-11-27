module test
 implicit none
  procedure(),pointer:: p,pp,ppp=>null()
end
module m1
use test
end
subroutine sub
use m1
implicit none
interface
  subroutine x
  end subroutine
  function   y()
  end function
end interface
p=>x
call p
pp=>x
call pp
if (associated( ppp ) )print *,203
ppp=>x
call ppp
end
call sub
print *,'pass'
end
  subroutine x
  end subroutine
  function   y()
   y=1
  end function
