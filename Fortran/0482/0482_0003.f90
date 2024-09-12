call test01()
print *,'pass'
end

subroutine test01()
type ty1
complex :: c(1)
end type
type (ty1) :: str(1)
ii=1
str%c(1)=(1.0,0.0)
!$omp atomic capture
v=str(1)%c(1)%im
str(1)%c(1)%im=ii+1
!$omp end atomic
!$omp atomic capture
v=str(1)%c(1)%re
str(1)%c(1)%re=ii+1
!$omp end atomic
v=v
end
