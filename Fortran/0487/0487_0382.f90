         module m
         procedure(real),pointer :: test
         integer::n=0
         end module m

         subroutine s1()
          use m
          write(1,*) test()
call s2
        contains
        subroutine s2()
         write(1,*)test()
        end subroutine
        end
use m
call set
call s1
if (n/=2) print *,101
rewind 1
read(1,*) a
if (a/=1) print *,201
read(1,*) a
if (a/=1) print *,202
print *,'pass'
end
subroutine set
use m
interface
function   s()
use m
end function
end interface
test=> s
end
function   s()
use m
n=n+1
s=1
end function
