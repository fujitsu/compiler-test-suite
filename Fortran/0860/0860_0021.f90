module m1
implicit none
contains
integer function iii()
iii=1
end
end
use m1
procedure(iii),pointer:: ip
ip=>iii
call test01(ip)
call test02(ip)
print *,'pass'
contains
subroutine test01(ifun)
implicit none
procedure(iii),pointer:: ifun
!$omp task  default(none)
!$omp task 
if (ifun()/=1) print *,202
!$omp end task
!$omp end task
end
subroutine test02(ifun)
implicit none
procedure(iii),pointer:: ifun
!$omp task  default(none)
if (ifun()/=1) print *,202
!$omp end task
end
end
