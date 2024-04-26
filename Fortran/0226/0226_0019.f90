call test01()
call test02()
print *,'pass'
end
subroutine test01()
implicit none
integer:: i,ifun
ifun(i)=i
!$omp task  default(none)
!$omp task
if (1.eq.2)print *,ifun(1)
!$omp end task
!$omp end task
end
subroutine test02()
implicit none
integer:: i,ifun
ifun(i)=i
!$omp task  default(none)
if (1.eq.2)print *,ifun(1)
!$omp end task
end
