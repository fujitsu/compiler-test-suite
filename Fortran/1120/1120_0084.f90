call test01()
print *,"pass"
end

subroutine test01()
ifun()=i
jfun()=j
i=1
j=2
!$omp task
k=ifun()
!$omp parallel 
  kk=jfun()
!$omp end parallel
!$omp end task

!$omp task
k=ifun()
!$omp task
  kk=jfun()
!$omp end task
!$omp end task

!$omp parallel 
!$omp do 
do iii=1,1
k=ifun()
!$omp task
  kk=jfun()
!$omp end task
end do
!$omp end do
!$omp end parallel

!$omp task
k=ifun()
!$omp parallel
!$omp do 
do iii=1,1
  kk=jfun()
end do
!$omp end do
!$omp end parallel
!$omp end task

end
