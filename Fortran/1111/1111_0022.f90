module m0
  interface
     subroutine ts()
     end subroutine 
  end interface
end
module nn
       interface
         subroutine d(p)
           procedure(e), pointer,intent(in) :: p 
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
       procedure(p), pointer :: p1
       procedure(p1), pointer :: p2
       procedure(p2), pointer :: p3
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
call p(q)
rewind 22
do nt=1,4
read(22,*) n
if (n/=100) print *,1001
read(22,*) n
if (n/=100) print *,1002
read(22,*) n
if (n/=100) print *,1003
end do
print *,'sngg814o : pass'
end
     subroutine s1(sp)
       use m1            
       procedure(ds), pointer :: sp 
       sptr=>ds
       sp=>sptr
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
       procedure(p), pointer :: p1
       procedure(p1), pointer :: p2
       procedure(p2), pointer :: p3
           interface
             subroutine w()
             end
           end interface
        p1=>p
        p2=>p
        p3=>p
        call      p(w)
        call      p1(w)
        call      p2(w)
        call      p3(w)
     end subroutine 
         subroutine d(p)
           procedure(e), pointer,intent(in) :: p 
           interface
             subroutine e()
             end
           end interface
           call p
         end
             subroutine w()
               write(22,*) 100
             end
