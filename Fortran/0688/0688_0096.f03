call s1
call s2
print *,'pass'
end
subroutine s1
type point
real x,y
end type
type,extends(point) :: dd
real z
end type
type(point),pointer::aaa=>null()
type(dd),pointer::bbb=>null()
allocate(aaa,bbb)
!$omp parallel firstprivate(aaa)
!$omp task firstprivate(bbb)
aaa%y=1
bbb%z=2
!$omp end task
!$omp end parallel
end
subroutine s2
abstract interface
 real function proc(a, b, c)
  real, intent (in) :: a, b, c
 end function
end interface
procedure (proc),pointer:: p => null()
!$omp task firstprivate(p)
!$omp end task
!$omp sections lastprivate(p)
!$omp end sections
end
