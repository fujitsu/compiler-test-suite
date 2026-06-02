module m0
  interface
     subroutine ts()
     end subroutine 
  end interface
end
module nn
       interface
         subroutine d(p)
           procedure(sin), pointer,intent(in) :: p 
           interface
             subroutine e()
             end
           end interface
         end
       end interface
end
module m1
  use m0
  implicit none
  procedure(ds), pointer :: sptr 
  interface
     subroutine ds(p)
       use nn
       procedure(d), pointer :: p 
     end subroutine 
  end interface
  interface gen
     procedure sptr
  end interface
end module m1
module m2
  interface
     subroutine s1(sp)
       use m1            
       procedure(ds), pointer :: sp 
     end subroutine 
     subroutine s2(q)
       use m1            
       use nn
       procedure(d), pointer :: q 
     end subroutine 
  end interface
end module m2

use m2
use m1
 use nn
 procedure(d), pointer :: q =>d
 procedure(ds), pointer :: p 
call s1(p)
call s2(q)
rewind 3
read(3,*) n
if (n/=100) print *,1001
read(3,*) n
if (n/=100) print *,1002
print *,'sngg788o : pass'
end
     subroutine s1(sp)
       use m1            
       procedure(ds), pointer :: sp 
       sptr=>ds
     end subroutine 
     subroutine s2(q)
       use m1            
       use nn
       procedure(d), pointer :: q 
       call sptr(q)
       call gen(q)
     end subroutine 
     subroutine ds(p)
       use nn
       procedure(d), pointer :: p 
           interface
             subroutine w()
             end
           end interface
           intrinsic cos
        call      p(cos)
        call w
     end subroutine 
         subroutine d(p)
           procedure(sin), pointer,intent(in) :: p 
           interface
             subroutine e()
             end
           end interface
           if ( abs(p(0.1)-cos(0.1))>0.001) print *,9001
         end
             subroutine w()
               write(3,*) 100
             end
