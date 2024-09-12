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
  x = x + 1
  v = x
!$omp end atomic
!$omp atomic capture
  v = x
  x = x + 1
!$omp end atomic
!$omp atomic capture
  v = x
  x = 1 + x
!$omp end atomic
!$omp atomic capture
  x = 1 + x
  v = x
!$omp end atomic
!$omp atomic capture
  v = xx(1)
  xx(1) = xx(1) + 1
!$omp end atomic
!$omp atomic capture
  xx(1) = xx(1) + 1
  v = xx(1)
!$omp end atomic
!$omp atomic capture
  vv(1) = xx(1)
  xx(1) = 1 + xx(1)
!$omp end atomic
!$omp atomic capture
  xx(1) = 1 + xx(1)
  vv(1) = xx(1)
!$omp end atomic
!$omp atomic capture
  vv(1) = xx(1)
  xx(1) = xx(1) + (v+1)
!$omp end atomic
!$omp atomic capture
  xx(1) = xx(1) + (v+1)
  vv(1) = xx(1)
!$omp end atomic
!$omp atomic capture
  vv(1) = xx(1)
  xx(1) = (v+1) + xx(1)
!$omp end atomic
!$omp atomic capture
  xx(1) = (v+1) + xx(1)
  vv(1) = xx(1)
!$omp end atomic
!$omp atomic capture
  v = t%y
  t%y = t%y + 1
!$omp end atomic
!$omp atomic capture
  t%y = t%y + 1
  v = t%y
!$omp end atomic
!$omp atomic capture
  v = t%y
  t%y = 1 + t%y
!$omp end atomic
!$omp atomic capture
  t%y = 1 + t%y
  v = t%y
!$omp end atomic
!$omp atomic capture
  v = t%yy(1)
  t%yy(1) = t%yy(1) + 1
!$omp end atomic
!$omp atomic capture
  t%yy(1) = t%yy(1) + 1
  v = t%yy(1)
!$omp end atomic
!$omp atomic capture
  v = t%yy(1)
  t%yy(1) = 1 + t%yy(1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = 1 + t%yy(1)
  v = t%yy(1)
!$omp end atomic
!$omp atomic capture
  v = t%yy(1)
  t%yy(1) = t%yy(1) + (vv(1)+1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = t%yy(1) + (vv(1)+1)
  v = t%yy(1)
!$omp end atomic
!$omp atomic capture
  t%yy(2) = t%yy(1)
  t%yy(1) = vv(1)+1 + t%yy(1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = vv(1)+1 + t%yy(1)
  t%yy(2) = t%yy(1)
!$omp end atomic
!$omp atomic capture
  v = tt(1)%y
  tt(1)%y = tt(1)%y + 1
!$omp end atomic
!$omp atomic capture
  tt(1)%y = tt(1)%y + 1
  v = tt(1)%y
!$omp end atomic
!$omp atomic capture
  v = tt(1)%y
  tt(1)%y =  1 + tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(1)%y =  1 + tt(1)%y
  v = tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(2) = tt(1)%yy(1)
  tt(1)%yy(1) = tt(1)%yy(1) + 1
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = tt(1)%yy(1) + 1
  tt(1)%yy(2) = tt(1)%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(2) = tt(1)%yy(1)
  tt(1)%yy(1) = 1 + tt(1)%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = 1 + tt(1)%yy(1)
  tt(1)%yy(2) = tt(1)%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(2)%yy(1) = tt(1)%yy(1)
  tt(1)%yy(1) = tt(1)%yy(1) + (vv(1)+1)
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = tt(1)%yy(1) + (vv(1)+1)
  tt(2)%yy(1) = tt(1)%yy(1)
!$omp end atomic
print *,'pass'
end
