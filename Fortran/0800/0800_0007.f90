         module m
         procedure(),pointer :: test
         integer::n=0
         end module m

module mm
use m
contains
         subroutine s1()
          write(8,*) test()
call s2
        contains
        subroutine s2()
         write(8,*)test()
        end subroutine
        end subroutine
        end
use mm
call set
call s1
if (n/=2) print *,101
rewind 8
read(8,*) a
if (a/=1) print *,201
read(8,*) a
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
