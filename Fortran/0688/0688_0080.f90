integer :: v, x, vv(2), xx(2)
type t1
  integer :: y,yy(2)
end type t1
type(t1)::t,tt(2)
x=1
xx=1
v=1
vv=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic write
  x = max(v, 1)
!$omp atomic write
  x = max(1, v) + 1
!$omp atomic write
  x = max(vv(1), v, 1)
!$omp atomic write
  x = max(v, 1, vv(1)) + 1
!$omp atomic write
  xx(1) = ior(xx(2), x)
!$omp atomic write
  xx(1) = ior(x, xx(2))
!$omp atomic write
  xx(1) = ior(xx(2), (v+1))
!$omp atomic write
  xx(1) = ior((v+1), xx(2))
!$omp atomic write
  t%y = max(t%yy(1), 1)
!$omp atomic write
  t%y = max(1, t%yy(2))
!$omp atomic write
  t%y = max(t%yy(1), vv(1), 1)
!$omp atomic write
  t%y = max(vv(1), 1, t%yy(2))
!$omp atomic write
  t%yy(1) = max(t%yy(2), 1)
!$omp atomic write
  t%yy(1) = max(1, t%yy(2))
!$omp atomic write
  t%yy(1) = max(t%yy(2), vv(1), 1)
!$omp atomic write
  t%yy(1) = max(vv(1), 1, t%yy(2))
!$omp atomic write
  tt(1)%y = max(tt(2)%y, 1)
!$omp atomic write
  tt(1)%y =  max(1, tt(2)%y)
!$omp atomic write
  tt(1)%y = max(tt(2)%y, (v+1))
!$omp atomic write
  tt(1)%y = max(v, 1, tt(2)%y)
!$omp atomic write
  tt(1)%yy(1) = max(tt(1)%yy(2), 1)
!$omp atomic write
  tt(1)%yy(1) = max(1, tt(1)%yy(2))
!$omp atomic write
  tt(1)%yy(1) = max(tt(2)%yy(1), vv(1), 1)
!$omp atomic write
  tt(1)%yy(1) = max((vv(1)+1), tt(2)%yy(1))
print *,'pass'
end
