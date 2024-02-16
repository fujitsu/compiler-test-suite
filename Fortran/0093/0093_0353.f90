integer,external :: OMP_GET_THREAD_NUM
type ty
complex :: cc(5)
end type ty
type(ty) :: obj
!$omp threadprivate(pp,obj)
complex ::  pp = (5,6)
complex ::  dd = (2,1)
!$omp threadprivate(dd)
dd = pp
!$omp parallel 
        obj%cc(1:5:2)%im =   dd%re
        obj%cc(1:5:2)%re =  dd%im
!$omp end parallel
if(any(obj%cc(1:5:2) .ne. (6,5)))print*,101,obj%cc(1:5:2)
print*,"Pass"
end
