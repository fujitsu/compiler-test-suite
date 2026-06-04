module m1
  interface
    module subroutine ss(p)
       procedure(w)::p
    end
  end interface
  contains
    subroutine w(n)
      print *,n
    end
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(p),pointer::p1
interface gen
   procedure::p
end interface
call p(2)
p1=>p
call p1(2)
call gen(2)
 end
end

use m1
       interface
         subroutine x(n)
         end
       end interface
call ss(x)
call chk

print *,'sngg577h : pass'
end
subroutine chk
rewind 3
read(3,*) k;if (k/=2) print *,901
read(3,*) k;if (k/=2) print *,902
read(3,*) k;if (k/=2) print *,903
end

         subroutine x(n)
write(3,*) n
         end
