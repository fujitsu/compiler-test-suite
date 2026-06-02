module m0
  type x
   integer::v
  end type
  type y
   integer::v
  end type
  type z
   integer::v
  end type
 interface operator(/=)
   procedure::r1,r2,r3
end interface
 contains
   function r1(x1,x2) result(r)
     logical::r
     type(x),intent(in)::x1
     integer,intent(in)::x2
     r=x1%v/=x2
   end
   function r2(x1,x2) result(r)
     logical::r
     type(y),intent(in)::x1
     integer,intent(in)::x2
     r=x1%v/=x2
   end
   function r3(x1,x2) result(r)
     logical::r
     type(z),intent(in)::x1
     integer,intent(in)::x2
     r=x1%v/=x2
   end
         type(y) function w(n)
            type(z)::n
  w%v=n%v
         end
end
module m1
use m0
  interface
    type(x) module function ss(p)
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
if ( p(z(2))/=2) print *,601
p1=>p
if ( p1(z(2))/=2) print *,602
if( gen(z(2))/=2) print *,603
ss=x(1)
 end
end

use m1
       interface
         type (y) function q(n)
           use m0
           type(z)::n
         end
       end interface
  procedure(q),pointer::p
p=>w
if ( ss(p)/=1)print *,1

print *,'sngg910h : pass'
end
subroutine chk
rewind 10
read(10,*) k;if (k/=1) print *,901
end

         type (y) function q(n)
           use m0
           type(z)::n
print *,'error'
write(10,*) n
q%v=n%v
         end
