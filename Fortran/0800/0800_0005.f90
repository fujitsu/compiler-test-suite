         module m
         procedure(),pointer :: test
         integer::n=0
         contains

         subroutine s1()
          call test()
call s2
        contains
        subroutine s2()
         call test()
        end subroutine
        end subroutine
        end 
use m
call set
call s1
if (n/=2) print *,101
print *,'pass'
end
subroutine set
use m
interface
subroutine s()
use m
end subroutine
end interface
test=> s
end
subroutine s()
use m
n=n+1
end subroutine
