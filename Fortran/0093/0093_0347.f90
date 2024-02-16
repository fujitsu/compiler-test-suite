type ty
complex :: cc(5)
end type ty
type(ty) :: obj
!$omp threadprivate(obj)

!$omp task
  obj%cc = (4,5)
  obj%cc(1:5:2)%im = 7
!$omp end task
if(any(obj%cc(1:5:2) .ne. (4,7)))print*,101
print*,"PASS"
end
