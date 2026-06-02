call test01()
print *,"pass"
end

subroutine test01()
save
!$omp threadprivate(f,g)
integer arr(10)
arr=1
!$omp single
!$omp parallel
!$omp end parallel
!$omp end single
end 
