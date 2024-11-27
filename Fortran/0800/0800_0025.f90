         module m
implicit none
         procedure(),pointer :: test
         integer::n=0
contains
         subroutine s()
           implicit none
           n=n+1
         end subroutine
         real function   f()
           implicit none
           n=n+1
           f=1
         end function   
     subroutine set
     implicit none
     end subroutine
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
implicit none
test=> s
         call test
        end subroutine
        end subroutine
        end 
use mm
implicit none
call s1
if (n/=2) print *,101
print *,'pass'
end
