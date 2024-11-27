module m1
  integer:: val=0

  procedure(sub),pointer, protected :: p
  contains
    subroutine sub
     val=val+1
    end subroutine
    subroutine ss
     p=> sub
    end subroutine
    subroutine sub1
     val=val+2
    end subroutine
end module m1

module m2
use m1
procedure(sub2), pointer, protected :: p1
contains
subroutine sub2
val =val+5
end subroutine
subroutine sub3
p1=>sub1
end subroutine sub3
end module m2

program pro
use m1
use m2
   call ss
   call p
   if(val/=1) print *,201,val
   call sub3
   call p1
   if(val/=3) print *,202,val
   print *,'Pass'
   end

