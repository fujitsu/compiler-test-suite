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
!$omp atomic capture
  v = x
  x = max(x, 1)
!$omp end atomic
!$omp atomic capture
  x = max(1, x)
  v = x
!$omp end atomic
!$omp atomic capture
  v = x
  x = max(x, vv(1), 1)
!$omp end atomic
!$omp atomic capture
  x = max(vv(1), 1, x)
  v = x
!$omp end atomic
!$omp atomic capture
  vv(1) = xx(1)
  xx(1) = ior(xx(1), 1)
!$omp end atomic
!$omp atomic capture
  xx(1) = ior(1, xx(1))
  vv(1) = xx(1)
!$omp end atomic
!$omp atomic capture
  vv(1) = xx(1)
  xx(1) = ior(xx(1), (v+1))
!$omp end atomic
!$omp atomic capture
  xx(1) = ior((v+1), xx(1))
  vv(1) = xx(1)
!$omp end atomic
!$omp atomic capture
  v = t%y
  t%y = max(t%y, 1)
!$omp end atomic
!$omp atomic capture
  t%y = max(1, t%y)
  v = t%y
!$omp end atomic
!$omp atomic capture
  v = t%y
  t%y = max(t%y, vv(1), 1)
!$omp end atomic
!$omp atomic capture
  t%y = max(vv(1), 1, t%y)
  v = t%y
!$omp end atomic
!$omp atomic capture
  v = t%yy(1)
  t%yy(1) = max(t%yy(1), 1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = max(1, t%yy(1))
  v = t%yy(1)
!$omp end atomic
!$omp atomic capture
  t%yy(2) = t%yy(1)
  t%yy(1) = max(t%yy(1), vv(1), 1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = max(vv(1), 1, t%yy(1))
  t%yy(2) = t%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(2)%y = tt(1)%y
  tt(1)%y = max(tt(1)%y, 1)
!$omp end atomic
!$omp atomic capture
  tt(1)%y =  max(1, tt(1)%y)
  tt(2)%y = tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(2)%y = tt(1)%y
  tt(1)%y = max(tt(1)%y, (v+1))
!$omp end atomic
!$omp atomic capture
  tt(1)%y = max(v, 1, tt(1)%y)
  tt(2)%y = tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(2) = tt(1)%yy(1)
  tt(1)%yy(1) = max(tt(1)%yy(1), 1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = max(1, tt(1)%yy(1))
  tt(1)%yy(2) = tt(1)%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(2) = tt(1)%yy(1)
  tt(1)%yy(1) = max(tt(1)%yy(1), vv(1), 1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = max((vv(1)+1), tt(1)%yy(1))
  tt(1)%yy(2) = tt(1)%yy(1)
!$omp end atomic
print *,'pass'
end
