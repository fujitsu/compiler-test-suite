module m1
private::x
  procedure(d),pointer::x
   interface g
     procedure::x
   end interface
  contains
    subroutine d
    end subroutine
end
use m1
print *,'sngg962o : pass'
end
