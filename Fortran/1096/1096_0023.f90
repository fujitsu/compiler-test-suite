module m0
   type,bind(c)::x1
     integer::v
   end type
   type ,bind(c)::x2
     integer::v
   end type
end
module m1
   use m0
  interface
    module recursive subroutine s1(n1,f,n2) bind(c)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk) bind(c)
        end
     end interface
    end
  end interface
end

submodule (m1) smod
  procedure(s1),pointer::p1
contains
 module   procedure  s1
 if (f(1)/=1) print *,701
  if (n1%v>10.and. n2%v>10) return
  n1%v=n1%v+1
  n2%v=n2%v+1
call s1(n1,f,n2)
p1=>s1
call p1(n1,f,n2)
 end
end

use m1
     type(x1)::n1
     type(x2)::n2
     interface
        function f1(k) result(kk) bind(c)
        end
     end interface
n1%v=1
n2%v=1
call s1(n1,f1,n2)
call chk

print *,'sngg540h : pass'
end
subroutine chk
rewind 17
do n=1,21
read(17,*) k;if (k/=1) print *,901
end do
end
        function f1(k) result(kk) bind(c)
          kk=k
          write(17,*) k
        end

