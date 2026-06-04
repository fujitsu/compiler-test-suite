module m1
  interface
    module subroutine ss(p,q)
       interface
         subroutine w
         end
         subroutine q(k)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
  procedure(q),pointer::p2
interface gen
   procedure::p,q
end interface
call p
call q(2)
p1=>p
call p1
p2=>q
call p2(2)
call gen
call gen(2)
 end
end

use m1
       interface
         subroutine x
         end
         subroutine xx(k)
         end
       end interface
  procedure(x),pointer::p
p=>x
call ss(p,xx)
call chk

print *,'sngg533h : pass'
end
subroutine chk
rewind 8
read(8,*) k;if (k/=2) print *,901
read(8,*) k;if (k/=2) print *,902
read(8,*) k;if (k/=2) print *,903
read(8,*) k;if (k/=2) print *,904
read(8,*) k;if (k/=2) print *,905
end

         subroutine x
write(8,*) 2
         end
         subroutine xx(k)
write(8,*) k
         end
