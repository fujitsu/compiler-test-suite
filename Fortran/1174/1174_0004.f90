module m1
  interface
    module function ss(p)
       procedure(w),pointer::p
    end
  end interface
  contains
    function w(n)
      print *,n
      w=n
    end
end

submodule (m1) smod
contains
 module   procedure  ss
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
         function x(n)
         end
       end interface
  procedure(x),pointer::p
p=>x
if ( ss(p)/=1)  print *,701
call chk

print *,'sngg578h : pass'
end
subroutine chk
rewind 7
read(7,*) k;if (k/=2) print *,901
read(7,*) k;if (k/=2) print *,902
read(7,*) k;if (k/=2) print *,903
end

         function x(n)
write(7,*) n
x=n
         end
