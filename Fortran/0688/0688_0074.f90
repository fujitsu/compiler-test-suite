integer :: v, x, vv(2), xx(2)
type t1
  integer :: v,y,yy(2)
end type t1
type(t1)::t,tt(2)
x=1
xx=1
vv=1
t%y=1
t%yy=1
tt(1)%y=1
tt(1)%yy=1
tt(2)%v=1
tt(2)%y=1
tt(2)%yy=1
!$omp atomic read
  v = x
!$omp atomic read
  v = xx(1)
!$omp atomic read
  v = t%y
!$omp atomic read
  v = t%yy(1)
!$omp atomic read
  v = tt(1)%y
!$omp atomic read
  v = tt(1)%yy(1)

!$omp atomic read
  vv(1) = v
!$omp atomic read
  vv(1) = xx(1)
!$omp atomic read
  vv(1) = vv(2)
!$omp atomic read
  vv(1) = t%y
!$omp atomic read
  vv(1) = t%yy(1)
!$omp atomic read
  vv(1) = tt(1)%y
!$omp atomic read
  vv(1) = tt(1)%yy(1)

!$omp atomic read
  t%v = x
!$omp atomic read
  t%v = xx(1)
!$omp atomic read
  t%v = t%y
!$omp atomic read
  t%v = t%yy(1)
!$omp atomic read
  t%v = tt(1)%y
!$omp atomic read
  t%v = tt(1)%yy(1)

!$omp atomic read
  tt(1)%v = x
!$omp atomic read
  tt(1)%v = xx(1)
!$omp atomic read
  tt(1)%v = t%y
!$omp atomic read
  tt(1)%v = t%yy(1)
!$omp atomic read
  tt(1)%v = tt(1)%y
!$omp atomic read
  tt(1)%v = tt(2)%v
!$omp atomic read
  tt(1)%v = tt(1)%yy(1)

!$omp atomic read
  t%yy(2) = x
!$omp atomic read
  t%yy(2) = xx(1)
!$omp atomic read
  t%yy(2) = t%y
!$omp atomic read
  t%yy(2) = t%yy(1)
!$omp atomic read
  t%yy(2) = tt(1)%y
!$omp atomic read
  t%yy(2) = tt(1)%yy(1)

!$omp atomic read
  tt(1)%yy(2) = x
!$omp atomic read
  tt(1)%yy(2) = xx(1)
!$omp atomic read
  tt(1)%yy(2) = t%y
!$omp atomic read
  tt(1)%yy(2) = t%yy(1)
!$omp atomic read
  tt(1)%yy(2) = tt(1)%y
!$omp atomic read
  tt(1)%yy(2) = tt(1)%yy(1)
!$omp atomic read
  tt(1)%yy(2) = tt(2)%yy(2)
print *,'pass'
end
