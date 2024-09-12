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
  x = x + 1
!$omp atomic update
  x = 1 + x
!$omp atomic update
  x = x + (v+1)
!$omp atomic update
  x = (v+1) + x
!$omp atomic update
  xx(1) = xx(1) + 1
!$omp atomic update
  xx(1) = 1 + xx(1)
!$omp atomic update
  xx(1) = xx(1) + (v+1)
!$omp atomic update
  xx(1) = (v+1) + xx(1)
!$omp atomic update
  t%y = t%y + 1
!$omp atomic update
  t%y = 1 + t%y
!$omp atomic update
  t%y = t%y + (vv(1)+1)
!$omp atomic update
  t%y = (vv(1)+1) + t%y
!$omp atomic update
  t%yy(1) = t%yy(1) + 1
!$omp atomic update
  t%yy(1) = 1 + t%yy(1)
!$omp atomic update
  t%yy(1) = t%yy(1) + (vv(1)+1)
!$omp atomic update
  t%yy(1) = vv(1)+1 + t%yy(1)
!$omp atomic update
  tt(1)%y = tt(1)%y + 1
!$omp atomic update
  tt(1)%y =  1 + tt(1)%y
!$omp atomic update
  tt(1)%y = tt(1)%y + (v+1)
!$omp atomic update
  tt(1)%y = v+1 + tt(1)%y
!$omp atomic update
  tt(1)%yy(1) = tt(1)%yy(1) + 1
!$omp atomic update
  tt(1)%yy(1) = 1 + tt(1)%yy(1)
!$omp atomic update
  tt(1)%yy(1) = tt(1)%yy(1) + (vv(1)+1)
!$omp atomic update
  tt(1)%yy(1) = vv(1)+1 + tt(1)%yy(1)
print *,'pass'
end
