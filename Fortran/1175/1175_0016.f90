module m1
  interface
    module real function ss(p)
     implicit none
       interface
         function w(n)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
     implicit none
contains
 module   procedure  ss
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
if ( p(2)/=2) print *,601
p1=>p
if ( p1(2)/=2) print *,602
if( gen(2)/=2) print *,603
ss=1
 end
end

use m1
       interface
         real function x(n)
         end
       end interface
  procedure(x),pointer::p
p=>x
if ( ss(p)/=1)print *,1
call chk

print *,'sngg741h : pass'
end
subroutine chk
rewind 19
read(19,*) k;if (k/=2) print *,901
read(19,*) k;if (k/=2) print *,902
read(19,*) k;if (k/=2) print *,903
end

         function x(n)
write(19,*) n
x=n
         end
