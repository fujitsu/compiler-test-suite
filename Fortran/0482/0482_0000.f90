call test01()
print *,'pass'
end

subroutine test01()
complex :: c(1)
ii=1
c=(1.0,0.0)
!$omp atomic capture
v=c(1)%im
c(1)%im=ii+1
!$omp end atomic
!$omp atomic capture
v=c(1)%re
c(1)%re=ii+1
!$omp end atomic
v=v
end
