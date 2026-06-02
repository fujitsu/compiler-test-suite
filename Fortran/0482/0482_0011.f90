call test01()
print *,'pass'
end

subroutine test01()
type ty1
complex :: c
end type
type (ty1) :: str
ii=1
str%c=(1.0,0.0)
!$omp atomic write
str%c%im=str%c%re
!$omp atomic write
str%c%re=str%c%im
ii=ii
end
