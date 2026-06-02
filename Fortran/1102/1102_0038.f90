module m0
   type x1
     integer::v
   end type
   type x2
     integer::v
   end type
end
module m1
   use m0
  interface
    module recursive subroutine s1(n1,f,n2)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk)
        end
     end interface
    end
    module recursive subroutine p2(n1,f,n2)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk)
        end
     end interface
    end
    module recursive subroutine p1(n1,f,n2)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk)
        end
     end interface
    end
  end interface
end

submodule (m1) smod
  procedure(s1)::xp1
  procedure(xp1)::p2
contains
 module   procedure  s1
 if (f(1)/=1) print *,701
  if (n1%v>20.and. n2%v>20) return
  n1%v=n1%v+1
  n2%v=n2%v+1
call s1(n1,f,n2)
call xp1(n1,f,n2)
call p2(n1,f,n2)
 end
 module   procedure  p1
 if (f(1)/=1) print *,701
 if (n1%v/=n2%v) print *,601
 end
end

    recursive subroutine xp1(n1,f,n2)
use m1,only:x1,x2
    entry                 p2(n1,f,n2)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk)
        end
     end interface
 if (f(1)/=1) print *,701
  if (n1%v>20.and. n2%v>20) return
  n1%v=n1%v+1
  n2%v=n2%v+1
end

use m1
     type(x1)::n1
     type(x2)::n2
     interface
        function f1(k) result(kk)
        end
     end interface
n1%v=1
n2%v=1
call s1(n1,f1,n2)
call chk

print *,'sngg209o : pass'
end
subroutine chk
rewind 3
do nn=1,61
read(3,*) k;if (k/=1) print *,901
enddo
end
        function f1(k) result(kk)
          kk=k
          write(3,*) k
        end

