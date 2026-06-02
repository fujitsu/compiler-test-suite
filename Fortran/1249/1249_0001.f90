module m1
  procedure(d),pointer,private::x
   interface g
     procedure::x
   end interface
  contains
    subroutine d
    end subroutine
end
use m1
print *,'sngg961o : pass'
end
