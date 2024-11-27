call test01()
print *,'pass'
end

subroutine test01()
complex :: c
!$omp simd
do ii=1,1
c=(1.0,0.0)
!$omp atomic capture
c%im=c%re
c%re=c%re+1
!$omp end atomic
end do
end
