integer :: v, x, vv(2), xx(2)
type t1
  integer :: y,yy(2)
end type t1
type(t1)::t,tt(2)
v=1
vv=1
xx=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic write
  x = 1
!$omp atomic write
  x = v
!$omp atomic write
  x = v + 1
!$omp atomic write
  x = 1 + v
!$omp atomic write
  x = v + (v+1)
!$omp atomic write
  x = (v+1) + v
!$omp atomic write
  xx(1) = xx(2) + x
!$omp atomic write
  xx(1) = x + xx(2)
!$omp atomic write
  xx(1) = xx(2) + (v+1)
!$omp atomic write
  xx(1) = (v+1) + xx(2)
!$omp atomic write
  t%y = t%yy(1) + 1
!$omp atomic write
  t%y = 1 + t%yy(1)
!$omp atomic write
  t%y = tt(1)%y + (vv(1)+1)
!$omp atomic write
  t%y = (vv(1)+1) + tt(1)%y
!$omp atomic write
  t%yy(1) = t%yy(2) + 1
!$omp atomic write
  t%yy(1) = 1 + t%yy(2)
!$omp atomic write
  t%yy(1) = t%yy(2) + (vv(1)+1)
!$omp atomic write
  t%yy(1) = vv(1)+1 + t%yy(2)
!$omp atomic write
  tt(1)%y = tt(2)%y + 1
!$omp atomic write
  tt(1)%y =  1 + tt(2)%y
!$omp atomic write
  tt(1)%y = tt(2)%y + (v+1)
!$omp atomic write
  tt(1)%y = (v+1) + tt(2)%y
!$omp atomic write
  tt(1)%yy(1) = tt(1)%yy(2) + 1
!$omp atomic write
  tt(1)%yy(1) = 1 + tt(1)%yy(2)
!$omp atomic write
  tt(1)%yy(1) = tt(2)%yy(1) + tt(1)%yy(2) + tt(2)%yy(2)
!$omp atomic write
  tt(1)%yy(1) = tt(1)%yy(2) + tt(2)%yy(2) + tt(2)%yy(1)
print *,'pass'
end
