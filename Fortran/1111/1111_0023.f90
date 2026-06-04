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
call p(q)
rewind 23
do nk=1,17
read(23,*) n
if (n/=100) print *,1001,nk
end do
print *,'sngg815o : pass'
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
  procedure(sptr), pointer :: xr1 
  procedure(xr1), pointer :: xr2 
  procedure(xr2), pointer :: xr3 
  procedure(xr3), pointer :: xr4 
  procedure(xr1), pointer :: xy1 
  procedure(xy1), pointer :: xy2 
  procedure(xy2), pointer :: xy3 
       call sptr(q)
       call gen(q)
       r1=>sptr
       r2=>r1
       r3=>r2
       r4=>r3
       y1=>r4
       y2=>y1
       y3=>y2
       call r1 (q)
       call r2 (q)
       call r3 (q)
       call r4 (q)
       call y1 (q)
       call y2 (q)
       call y3 (q)
       xr1=>sptr
       xr2=>xr1
       xr3=>xr2
       xr4=>xr3
       xy1=>xr4
       xy2=>xy1
       xy3=>xy2
       call xr1 (q)
       call xr2 (q)
       call xr3 (q)
       call xr4 (q)
       call xy1 (q)
       call xy2 (q)
       call xy3 (q)
     end subroutine 
     subroutine ds(p)
       use nn
       procedure(d), pointer :: p 
           interface
             subroutine w()
             end
           end interface
        call      p(w)
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
               write(23,*) 100
             end
