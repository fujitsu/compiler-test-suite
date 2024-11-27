module test
 implicit none
  procedure(),pointer:: p=> null()
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
if (associated( p ) )print *,201
p=>x
call p
end
call sub
print *,'pass'
end
  subroutine x
  end subroutine
  function   y()
   y=1
  end function
