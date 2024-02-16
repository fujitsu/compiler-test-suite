integer,external :: OMP_GET_THREAD_NUM
type ty
  complex :: cc(5) = (3,4)
end type ty
type(ty) :: obj
!$omp threadprivate(obj)
!$omp single 
        obj%cc = (7,8)
        obj%cc(1:5:2)%im = 7
!$omp end single copyprivate(cc)
if(any(obj%cc(1:5:2) .ne. (7,7)))print*,101
print*,"PASS"
end
