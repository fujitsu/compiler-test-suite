call test01()
print *,'pass'
end

subroutine test01()
complex :: c
c=(1.0,0.0)
!$omp atomic read
c%im=c%re
!$omp atomic read
c%re=c%im
end
