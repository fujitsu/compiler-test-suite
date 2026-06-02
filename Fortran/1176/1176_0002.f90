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
end
module m1
use m0
  interface
    type(x) module function ss(p)
       interface
         type(y) function w(n)
           import
            type(z)::n
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
 interface operator(/=)
   procedure x01,y01,z01
 end interface
 contains
   function x01(d,k) result(r)
   logical::r
    type(x),intent(in)::d
    integer,intent(in)::k
    r=.false.
   if (d%v/=k)r=.true.
   end
   function y01(d,k) result(r)
   logical::r
    type(y),intent(in)::d
    integer,intent(in)::k
    r=.false.
   if (d%v/=k)r=.true.
   end
   function z01(d,k) result(r)
   logical::r
    type(z),intent(in)::d
    integer,intent(in)::k
    r=.false.
   if (d%v/=k)r=.true.
   end
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
         type (y) function w(n)
           use m0
            type(z)::n
         end
       end interface
  procedure(w),pointer::p
p=>w
if ( ss(p)/=1)print *,1
call chk

print *,'sngg583h : pass'
end
subroutine chk
rewind 7
read(7,*) k;if (k/=2) print *,901
read(7,*) k;if (k/=2) print *,902
read(7,*) k;if (k/=2) print *,903
end

         type (y) function w(n)
           use m0
            type(z)::n
write(7,*) n
w%v=n%v
         end
