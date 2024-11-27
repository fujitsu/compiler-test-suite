integer,external ::iii
procedure(integer),pointer:: ip
ip=>iii
call test01(ip)
call test02(ip)
print *,'pass'
contains
subroutine test01(ifun)
implicit none
interface
integer function iii()
end
end interface
procedure(iii),intent(in),pointer:: ifun
!$omp task  default(none)
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp task 
if (ifun()/=1) print *,202
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task

!$omp task  default(none)
!$omp task 
!$omp task 
!$omp task 
!$omp task 
if (ifun()/=1) print *,202
!$omp task 
!$omp task 
!$omp task 
!$omp task 
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end task
end
subroutine test02(ifun)
implicit none
interface
integer function iii()
end
end interface
procedure(iii),intent(in),pointer:: ifun
!$omp task  default(none)
if (ifun()/=1) print *,202
!$omp end task
end
end
integer function iii()
iii=1
end
