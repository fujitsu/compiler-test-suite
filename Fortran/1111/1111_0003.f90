module m0
  interface
     subroutine ts()
     end subroutine 
  end interface
end
module m1
  use m0
  implicit none
  procedure(ds), pointer :: sptr 
  interface
     subroutine ds()
     end subroutine 
  end interface
  interface gen
     procedure sptr
  end interface
end module m1
module m2
  interface
     subroutine s1()
       use m1            
     end subroutine 
     subroutine s2()
       use m1            
     end subroutine 
  end interface
end module m2

use m2
call s1
call s2
rewind 1
read(1,*) n
if (n/=100) print *,1001
print *,'sngg786o : pass'
end
     subroutine s1()
       use m1            
       sptr=>ds
     end subroutine 
     subroutine s2()
       use m1            
       call gen
     end subroutine 
     subroutine ds()
        write(1,*)100
     end subroutine 
