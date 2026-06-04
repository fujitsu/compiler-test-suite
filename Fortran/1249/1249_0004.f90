module m1
  procedure(d),pointer::x
   interface g
     procedure::x
   end interface
private
public::g
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end

use m1
print *,'sngg975o : pass'
end
