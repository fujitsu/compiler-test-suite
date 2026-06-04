integer :: v, x, vv(2), xx(2)
type t1
  integer :: y,yy(2)
end type t1
type(t1)::t,tt(2)
x=1
v=1
vv=1
xx=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic write
  xx(1) = xx(1) + x
!$omp atomic write
  xx(1) = x + xx(1)
!$omp atomic write
  xx(1) = xx(1) + (v+1)
!$omp atomic write
  xx(1) = (v+1) + xx(1)
!$omp atomic write
  t%yy(1) = t%yy(1) + 1
!$omp atomic write
  t%yy(1) = 1 + t%yy(1)
!$omp atomic write
  t%yy(1) = t%yy(1) + (vv(1)+1)
!$omp atomic write
  t%yy(1) = vv(1)+1 + t%yy(1)
!$omp atomic write
  tt(1)%y = tt(1)%y + 1
!$omp atomic write
  tt(1)%y =  1 + tt(1)%y
!$omp atomic write
  tt(1)%y = tt(1)%y + (v+1)
!$omp atomic write
  tt(1)%y = (v+1) + tt(1)%y
!$omp atomic write
  tt(1)%yy(1) = tt(1)%yy(1) + 1
!$omp atomic write
  tt(1)%yy(1) = 1 + tt(1)%yy(1)
!$omp atomic write
  tt(1)%yy(1) = tt(1)%yy(1) + tt(1)%yy(2) + tt(2)%yy(2)
!$omp atomic write
  tt(1)%yy(1) = tt(1)%yy(2) + tt(2)%yy(2) + tt(1)%yy(1)
print *,'pass'
end
