integer :: xx(2)
type t1
  integer :: y,yy(2)
end type t1
type(t1)::t,tt(2)
xx=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic update
  xx(1) = max(xx(1), xx(2))
!$omp atomic update
  xx(1) = max(xx(2), xx(1))
!$omp atomic update
  t%y = max(t%y, t%yy(1))
!$omp atomic update
  t%y = max(t%yy(1), t%y)
!$omp atomic update
  t%yy(1) = max(t%yy(1), t%yy(2))
!$omp atomic update
  t%yy(1) = max(t%yy(2), t%yy(1))
!$omp atomic update
  t%yy(1) = min(t%yy(1), tt(1)%y)
!$omp atomic update
  t%yy(1) = ior(tt(1)%y, t%yy(1))
!$omp atomic update
  tt(1)%y = iand(tt(1)%y, tt(2)%y)
!$omp atomic update
  tt(1)%y =  ieor(tt(2)%y, tt(1)%y)
!$omp atomic update
  tt(1)%y = max(tt(1)%y, tt(1)%yy(1))
!$omp atomic update
  tt(1)%y = max(tt(1)%yy(1), tt(1)%y)
!$omp atomic update
  tt(1)%yy(1) = max(tt(1)%yy(1), tt(1)%yy(2))
!$omp atomic update
  tt(1)%yy(1) = max(tt(1)%yy(2), tt(1)%yy(1))
!$omp atomic update
  tt(1)%yy(1) = max(tt(1)%yy(1), tt(2)%yy(1))
!$omp atomic update
  tt(1)%yy(1) = max(tt(2)%yy(1), tt(1)%yy(1))
print *,'pass'
end
