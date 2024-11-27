         module m
implicit none
         procedure(),pointer :: test
         integer::n=0
contains
subroutine s()
implicit none
n=n+1
end subroutine
subroutine set
implicit none
test=> s
end subroutine
end

module mm
use m
implicit none
         contains
         subroutine s1()
          implicit none
          call test
          call test()
          call s2
        contains
        subroutine s2()
         implicit none
         call test()
         call test
        end subroutine
        end subroutine
        end 
use mm
implicit none
call set
call s1
if (n/=4) print *,101
print *,'pass'
end
