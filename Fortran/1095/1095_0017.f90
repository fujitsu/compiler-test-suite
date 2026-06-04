module m2
  implicit none
  integer :: n=1
  contains
   integer pure function if(kk)
   integer,intent(in)::kk
   if=kk
  end
end

module m3
  contains
    subroutine sub(k,a,b)
      use m2
      implicit none
    interface
       integer pure function k(kk)
       integer,intent(in)::kk
       end
    end interface
    integer::a
      integer :: b(k(a))
    if (size(b) /= 2) print *,4,size(b)
    end subroutine
end


use m3
use m2
integer::b(8)
      procedure (if)::kf
call sub(kf,2,b)
print *,'sngg214h : pass'
end
   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
