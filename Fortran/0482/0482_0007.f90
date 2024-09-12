
!$omp paralleldo
do i=1,1
!$omp simd
do ii=1,1
call test01()
end do
end do
!$omp endparalleldo
print *,'pass'
end

subroutine test01()
complex :: c
c=(1.0,0.0)
!$omp atomic capture
c%im=c%re
c%re=1
!$omp end atomic
end
