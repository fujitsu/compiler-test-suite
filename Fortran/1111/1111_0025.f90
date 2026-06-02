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
  procedure(sin), pointer :: sptr 
  procedure(sptr), pointer :: r1
  procedure(r1), pointer :: r2
  procedure(r2), pointer :: r3
  procedure(r3), pointer :: r4
  procedure(r1), pointer :: y1
  procedure(y1), pointer :: y2
  procedure(y2), pointer :: y3
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
module mm1
use m1
  procedure(sptr), pointer :: w1
  procedure(w1), pointer :: w2
  procedure(w2), pointer :: w3
  procedure(w3), pointer :: w4
  procedure(w2), pointer :: z1
  procedure(z1), pointer :: z2
  procedure(z2), pointer :: z3
  procedure(z3), pointer :: z4
end
module m2
  interface
     subroutine s1(sp)
       use mm1            
       procedure(ds), pointer :: sp 
     end subroutine 
     subroutine s2(q)
       use mm1            
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
rewind 25
read(25,*) n
if (n/=100) print *,1001
print *,'sngg817o : pass'
end
     subroutine s1(sp)
       use m1            
       procedure(ds), pointer :: sp 
       intrinsic cos
       sptr=>cos
     end subroutine 
     subroutine s2(q)
       use m1            
       use nn
       procedure(d), pointer :: q 
       if ( abs(cos(0.1)-sptr(0.1))>0.0001) print *,1001
       if ( abs(cos(0.1)-gen(0.1))>0.0001) print *,1002
       call ds (q)
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
               write(25,*) 100
             end
