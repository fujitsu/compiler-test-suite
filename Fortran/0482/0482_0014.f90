subroutine sub1()
integer :: v
complex :: x
v=1
v=v
x=1
!$omp atomic capture
  v = x%im
  x%im = max(x%im, 1)
!$omp end atomic
!$omp atomic capture
  v = x%im
  x%im = max(1,x%im)
!$omp end atomic
!$omp atomic capture
  v = x%re
  x%re = max(x%re, 1)
!$omp end atomic
end

subroutine sub2()
integer :: v
complex :: x(10)
v=1
v=v
x=1
!$omp atomic capture
  v = x(1)%im
  x(1)%im = max(x(1)%im, 1)
!$omp end atomic
!$omp atomic capture
  v = x(1)%im
  x(1)%im = max(1,x(1)%im)
!$omp end atomic
!$omp atomic capture
  v = x(1)%re
  x(1)%re = max(x(1)%re, 1)
!$omp end atomic
end

subroutine sub3()
integer :: v
type ty1
complex :: x(1)
end type
type(ty1) :: str
v=1
v=v
str%x=1
!$omp atomic capture
  v = str%x(1)%im
  str%x(1)%im = max(str%x(1)%im, 1)
!$omp end atomic
!$omp atomic capture
  v = str%x(1)%im
  str%x(1)%im = max(1,str%x(1)%im)
!$omp end atomic
!$omp atomic capture
  v = str%x(1)%re
  str%x(1)%re = max(str%x(1)%re, 1)
!$omp end atomic
end

call sub1()
call sub2()
call sub3()
print *,'pass'
end
