module test
implicit none
  procedure(),pointer:: p=> null()
 character*100 p
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
  character(100) function   y()
  end function
end interface
if (associated( p ) )print *,201
p=>y
if (p()/='1') print *,301
end
call sub
print *,'pass'
end
  subroutine x
  end subroutine
  character(100) function   y()
   y='1'
  end function
