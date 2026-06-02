module m1
  implicit none
  interface
    module subroutine s1(z)
  implicit none
       interface
         subroutine z
  implicit none
         end
       end interface
    end
    module subroutine ss(w)
       interface
         subroutine w
  implicit none
         end
       end interface
    end
  end interface
end

submodule (m1) smod
  implicit none
contains
 module   procedure  s1
  implicit none
write(18,*) 1
 end
 module   procedure  ss
  implicit none
  procedure(w),pointer::p1
p1=>w
call p1
 end
end

use m1
       interface
         subroutine x
  implicit none
         end
       end interface
call ss(x)
call chk

print *,'sngg740h : pass'
end
subroutine chk
  implicit none
integer::k
rewind 18
read(18,*) k;if (k/=2) print *,901
end

         subroutine x
  implicit none
write(18,*) 2
         end
