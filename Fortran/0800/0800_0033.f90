         module m
implicit none
         procedure(),pointer :: test
         integer::n=0
      interface
         subroutine s()
           import 
           implicit none
         end subroutine
      end interface
end
module mm
use m
         contains
         subroutine s1()
implicit none
test=> s
          call test
call s2
        contains
        subroutine s2()
use m
implicit none
         call test
        end subroutine
        end subroutine
        end 
use mm
implicit none
call set
call s1
if (n/=2) print *,101
print *,'pass'
end
subroutine set
use m
implicit none
test=> s
end
subroutine s()
use m
implicit none
n=n+1
end subroutine
