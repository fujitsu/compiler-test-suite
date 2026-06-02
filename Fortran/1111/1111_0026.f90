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
  procedure(sin) :: sptr 
  procedure(sptr) :: r1
  procedure(r1) :: r2
  procedure(r2) :: r3
  procedure(r3) :: r4
  procedure(r1) :: y1
  procedure(y1) :: y2
  procedure(y2) :: y3
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
  procedure(ds) :: xsptr
  procedure(xsptr) :: xr1
  procedure(xr1) :: xr2
  procedure(xr2) :: xr3
  procedure(xr3) :: xr4
  procedure(xr1) :: xy1
  procedure(xy1) :: xy2
  procedure(xy2) :: xy3
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
rewind 26
read(26,*) n
if (n/=100) print *,1001
print *,'sngg818o : pass'
end
  function sptr(a)
   sptr=cos(a)
  end 
     subroutine s1(sp)
       use m1            
       procedure(ds), pointer :: sp 
       intrinsic cos
       sp=>ds
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
               write(26,*) 100
             end
