call test01()
print *,"pass"
end

subroutine test01()
ifun()=i
jfun()=j
ipfun()=ip
i=1
j=1
ip=1
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
k=ifun()
!$omp task
  kk=jfun()
!$omp end task
!$omp end parallel

!$omp task
k=ifun()
!$omp parallel
  kk=jfun()
!$omp single
  kkk= ipfun()
!$omp end single
!$omp end parallel
!$omp end task

end
