integer,external ::iii
call test01(iii)
call test02(iii)
print *,'pass'
contains
subroutine test01(ifun)
implicit none
interface
integer function iii()
end
end interface
procedure(iii),intent(in),pointer:: ifun
integer:: i=1
!$omp task  default(none)
!$omp simd 
do i=1,10
if (ifun()/=1) print *,202
end do
!$omp end simd
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
