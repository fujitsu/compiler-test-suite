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
    module subroutine s1(n1,f,n2)
     type(x1)::n1
     type(x2)::n2
     interface
        function f(k) result(kk)
        end
     end interface
    end
    module recursive subroutine s2(n1,f,n2)
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
  procedure(s2),pointer::p1
  procedure(p1),pointer::p2
contains
 module   procedure  s1
call s2(n1,f,n2)
p1=>s2
p2=>p1
call p1(n1,f,n2)
call p2(n1,f,n2)
 end
end

submodule (m1:smod) smod2
contains
 module   procedure  s2
 if (f(1)/=1) print *,701
  if (n1%v>10.and. n2%v>10) return
  n1%v=n1%v+1
  n2%v=n2%v+1
call s2(n1,f,n2)
p1=>s2
p2=>p1
call p1(n1,f,n2)
call p2(n1,f,n2)
 end
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

print *,'sngg544h : pass'
end
subroutine chk
rewind 21
do n=1,33
read(21,*) k;if (k/=1) print *,901
end do
end
        function f1(k) result(kk)
          kk=k
          write(21,*) k
        end

