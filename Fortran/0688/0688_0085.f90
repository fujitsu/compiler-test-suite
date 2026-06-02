integer :: x, vv(2), xx(2)
type t1
  integer :: y,yy(2)
end type t1
type(t1)::t,tt(2)
x=1
xx=1
vv=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic write
  xx(1) = ior(xx(1), x)
!$omp atomic write
  xx(1) = ior(x, xx(1))
!$omp atomic write
  xx(1) = ior(xx(2), (xx(1)+1))
!$omp atomic write
  xx(1) = ior((1+xx(1)), xx(2))
!$omp atomic write
  t%yy(1) = max(t%yy(2), t%yy(1), t%y)
!$omp atomic write
  t%yy(1) = max(t%yy(1), t%y, t%yy(2))
!$omp atomic write
  tt(1)%yy(1) = max(tt(2)%yy(1), vv(1), tt(1)%yy(1))
!$omp atomic write
  tt(1)%yy(1) = max((vv(1)+tt(1)%yy(1)), tt(2)%yy(1))
print *,'pass'
end
