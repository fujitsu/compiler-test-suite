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
!$omp atomic write
  xx(1) = max(xx(1), xx(2)) + 1
!$omp atomic write
  xx(1) = 1 + max(xx(2), xx(1))
!$omp atomic write
  t%yy(1) = max(t%yy(1), t%yy(2)) + 1
!$omp atomic write
  t%yy(1) = 1 + max(t%yy(2), t%yy(1))
!$omp atomic write
  t%yy(1) = min(t%yy(1), tt(1)%y) + 1
!$omp atomic write
  t%yy(1) = 1 + ior(tt(1)%y, t%yy(1))
!$omp atomic write
  tt(1)%y = iand(tt(1)%y, tt(2)%y) + 1
!$omp atomic write
  tt(1)%y = 1 + ieor(tt(2)%y, tt(1)%y)
!$omp atomic write
  tt(1)%y = max(xx(1), tt(1)%yy(1)) + tt(1)%y
!$omp atomic write
  tt(1)%y = tt(1)%y + max(tt(1)%yy(1), xx(1))
!$omp atomic write
  tt(1)%yy(1) = max(tt(1)%yy(1), tt(2)%yy(1)) + 1
!$omp atomic write
  tt(1)%yy(1) = 1 + max(tt(2)%yy(1), tt(1)%yy(1))
print *,'pass'
end
