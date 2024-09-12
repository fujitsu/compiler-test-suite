module mod
procedure(real),pointer :: p
contains
real function proc1(arg1)
!$omp atomic read
proc1 = arg1
!$omp atomic write
proc1 = arg1
end function
end module
use mod
p => proc1
if(p(1.0)/=1.0) print *,'err'
print *,'pass'
end