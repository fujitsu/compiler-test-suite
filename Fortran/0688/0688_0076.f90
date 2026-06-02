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
!$omp atomic update
  x = max(x, 1)
!$omp atomic update
  x = max(1, x)
!$omp atomic update
  x = max(x, v, 1)
!$omp atomic update
  x = max(v, 1, x)
!$omp atomic update
  xx(1) = ior(xx(1), 1)
!$omp atomic update
  xx(1) = ior(1, xx(1))
!$omp atomic update
  xx(1) = ior(xx(1), (v+1))
!$omp atomic update
  xx(1) = ior((v+1), xx(1))
!$omp atomic update
  t%y = max(t%y, 1)
!$omp atomic update
  t%y = max(1, t%y)
!$omp atomic update
  t%y = max(t%y, vv(1),1)
!$omp atomic update
  t%y = max(vv(1), 1, t%y)
!$omp atomic update
  t%yy(1) = max(t%yy(1), 1)
!$omp atomic update
  t%yy(1) = max(1, t%yy(1))
!$omp atomic update
  t%yy(1) = max(t%yy(1), vv(1), 1)
!$omp atomic update
  t%yy(1) = max(vv(1), 1, t%yy(1))
!$omp atomic update
  tt(1)%y = max(tt(1)%y, 1)
!$omp atomic update
  tt(1)%y =  max(1, tt(1)%y)
!$omp atomic update
  tt(1)%y = max(tt(1)%y, (v+1))
!$omp atomic update
  tt(1)%y = max(v, 1, tt(1)%y)
!$omp atomic update
  tt(1)%yy(1) = max(tt(1)%yy(1), 1)
!$omp atomic update
  tt(1)%yy(1) = max(1, tt(1)%yy(1))
!$omp atomic update
  tt(1)%yy(1) = max(tt(1)%yy(1), vv(1), 1)
!$omp atomic update
  tt(1)%yy(1) = max((vv(1)+1), tt(1)%yy(1))
print *,'pass'
end
