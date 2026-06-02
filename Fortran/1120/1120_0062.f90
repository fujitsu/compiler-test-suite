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
arr=2
if (1.eq.2)print *,"task 1 : ", loc(arr)
!$omp end task
!$omp end parallel
!$omp end single
if (1.eq.2)print *,"task 1 : ", loc(arr)
if (1.eq.2)print *,arr(1)
end 
