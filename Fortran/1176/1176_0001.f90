module m1
 implicit none
  interface
 real   module function ss(p)
 implicit none
       procedure(w)::p
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
if ( p(2)/=2) print *,501
p1=>p
if ( p1(2)/=2) print *,502
if ( gen(2)/=2) print *,503
ss=1
 end
end

use m1
       interface
         function x(n)
         end
       end interface
if ( ss(x)/=1) print *,202
call chk

print *,'sngg582h : pass'
end
subroutine chk
rewind 4
read(4,*) k;if (k/=2) print *,901
read(4,*) k;if (k/=2) print *,902
read(4,*) k;if (k/=2) print *,903
end

         function x(n)
write(4,*) n
x=n
         end
