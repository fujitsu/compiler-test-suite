module m1
       implicit none
  interface
    real module function ss(p)
       implicit none
       procedure(w),pointer::p
    end
  end interface
  contains
    real function w(n)
     integer::n
      print *,n
      w=n
    end
end

submodule (m1) smod
       implicit none
contains
 module   procedure  ss
       implicit none
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
if ( p(2)/=2) print *,801
p1=>p
if ( p1(2)/=2) print *,802
if ( gen(2)/=2) print *,803
ss=1
 end
end

use m1
       interface
         real function x(n)
       implicit none
integer::n
         end
       end interface
  procedure(x),pointer::p
p=>x
if ( ss(p)/=1)  print *,701
call chk

print *,'sngg581h : pass'
end
subroutine chk
rewind 3
read(3,*) k;if (k/=2) print *,901
read(3,*) k;if (k/=2) print *,902
read(3,*) k;if (k/=2) print *,903
end

       real   function x(n)
       implicit none
integer::n
write(3,*) n
x=n
         end
