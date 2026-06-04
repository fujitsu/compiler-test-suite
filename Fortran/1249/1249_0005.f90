module m1
  procedure(d)::x
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
integer::x=1
print *,'sngg978o : pass'
end
    subroutine x(p)
       character(*),pointer::p
    end subroutine
