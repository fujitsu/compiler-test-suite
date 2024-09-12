integer :: xx(3)
type t1
  integer :: y,yy(3)
end type t1
type(t1)::t,tt(3)
xx=1
t%y=1
t%yy=1
tt%y=1
tt(1)%yy=1
tt(2)%yy=1
!$omp atomic capture
  xx(3) = xx(1)
  xx(1) = max(xx(1), xx(2))
!$omp end atomic
!$omp atomic capture
  xx(1) = max(xx(2), xx(1))
  xx(3) = xx(1)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = t%y
  t%y = max(t%y, t%yy(1))
!$omp end atomic
!$omp atomic capture
  t%y = max(t%yy(1), t%y)
  t%yy(1) = t%y
!$omp end atomic
!$omp atomic capture
  t%yy(3) = t%yy(1)
  t%yy(1) = max(t%yy(1), t%yy(2))
!$omp end atomic
!$omp atomic capture
  t%yy(1) = max(t%yy(2), t%yy(1))
  t%yy(3) = t%yy(1)
!$omp end atomic
!$omp atomic capture
  t%yy(3) = t%yy(1)
  t%yy(1) = min(t%yy(1), tt(1)%y)
!$omp end atomic
!$omp atomic capture
  t%yy(1) = ior(tt(1)%y, t%yy(1))
  t%yy(3) = t%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(3)%y = tt(1)%y
  tt(1)%y = iand(tt(1)%y, tt(2)%y)
!$omp end atomic
!$omp atomic capture
  tt(1)%y =  ieor(tt(2)%y, tt(1)%y)
  tt(3)%y = tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(3)%y = tt(1)%y
  tt(1)%y = max(tt(1)%y, tt(1)%yy(1))
!$omp end atomic
!$omp atomic capture
  tt(1)%y = max(tt(1)%yy(1), tt(1)%y)
  tt(3)%y = tt(1)%y
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(3) = tt(1)%yy(1)
  tt(1)%yy(1) = max(tt(1)%yy(1), tt(1)%yy(2))
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = max(tt(1)%yy(2), tt(1)%yy(1))
  tt(1)%yy(3) = tt(1)%yy(1)
!$omp end atomic
!$omp atomic capture
  tt(3)%yy(1) = tt(1)%yy(1)
  tt(1)%yy(1) = max(tt(1)%yy(1), tt(2)%yy(1))
!$omp end atomic
!$omp atomic capture
  tt(1)%yy(1) = max(tt(2)%yy(1), tt(1)%yy(1))
  tt(3)%yy(1) = tt(1)%yy(1)
!$omp end atomic
print *,'pass'
end
