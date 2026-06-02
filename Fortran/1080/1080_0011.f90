module m1
 interface
    subroutine sub1(d) 
      type(*),dimension(..)::d
    end
    subroutine sub2(d) 
      integer,dimension(..)::d
    end
    subroutine sub3(d) 
      type(*)              ::d
    end
 end interface
end
module m2
contains
subroutine z(b) 
use m1
      type(*),dimension(..)::b
integer::a=1
write(105,  '("z a:",z16.16)')loc(a)
write(105,  '("z b:",z16.16)')loc(b)
call sub1(a)
call sub1(b)
call sub2(a)
call sub3(a)
end
end
!    subroutine sub1(d) 
!      !type(*),dimension(..)::d
!      integer              ::d
!print '("sub1 d:",z16.16)',loc(d)
!    end
!    subroutine sub2(d) 
!      !integer,dimension(..)::d
!      integer              ::d
!print '("sub2 d:",z16.16)',loc(d)
!    end
!    subroutine sub3(d) 
!      !type(*)              ::d
!      integer              ::d
!print '("sub3 d:",z16.16)',loc(d)
!    end
use m2
integer::c=1
write(105,  '("main c:",z16.16)')loc(c)
call z(c)
print *,'sngg738l : pass'
end
    subroutine sub1(d) 
      type(*),dimension(..)::d
pointer(base,k)
base=loc(d)
if (k/=1)print *,1002
write(105,  '("sub1 d:",z16.16)')loc(d)
    end
    subroutine sub2(d) 
      integer,dimension(..)::d
pointer(base,k)
base=loc(d)
if (k/=1)print *,1003
write(105,  '("sub2 d:",z16.16)')loc(d)
    end
    subroutine sub3(d) 
      type(*)              ::d
pointer(base,k)
base=loc(d)
if (k/=1)print *,1003
write(105,  '("sub3 d:",z16.16)')loc(d)
    end
