call omp_set_num_threads(2)
call test01()
print *,"pass"
end

subroutine test01()
integer arr(10)
arr=1
!$omp single
!$omp parallel shared(arr)
if (1.eq.2)print *,"parale : ",loc(arr)
!$omp task
a=1
!$omp task
b=1
!$omp task
c=1
!$omp end task
!$omp end task
!$omp end task
!$omp end parallel
!$omp end single
if (1.eq.2)print *,"task 1 : ", loc(arr)
if (1.eq.2)print *,arr(1)
end 
