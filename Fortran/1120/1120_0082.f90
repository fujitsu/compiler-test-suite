call test01()
print *,"pass"
end

subroutine test01()
common /com/ k
!$omp task
!$omp parallel
  b = 1
!$omp end parallel
!$omp end task

!$omp task
!$omp parallel private(/com/)
  b = 1
!$omp end parallel
!$omp end task

!$omp task default(shared)
!$omp parallel private(/com/)
  b = 1
!$omp end parallel
!$omp end task

!$omp task 
!$omp parallel private(k)
  b = 1
!$omp end parallel
!$omp end task

!$omp task 
!$omp parallel 
  b = 1
  k =1
!$omp end parallel
!$omp end task

!$omp task
!$omp parallel private(/com/)
  b = 1
  k =1
!$omp end parallel
!$omp end task

!$omp task default(shared)
!$omp parallel private(/com/)
  b = 1
  k =1
!$omp end parallel
!$omp end task

!$omp task default(private)
!$omp parallel private(/com/)
  b = 1
  k =1
!$omp end parallel
!$omp end task

!$omp task default(firstprivate)
!$omp parallel private(/com/)
  b = 1
  k =1
!$omp end parallel
!$omp end task

!$omp task default(firstprivate)
!$omp parallel firstprivate(/com/)
  b = 1
  k =1
!$omp end parallel
!$omp end task

end
