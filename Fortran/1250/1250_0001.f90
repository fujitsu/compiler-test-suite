module m1
  procedure(),pointer::x
private::x
  contains
    subroutine d
    end subroutine
end
use m1
implicit none
integer::x=1
if (x/=1) print *,9001
print *,'sngg988o : pass'
end
