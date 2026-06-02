integer,external :: OMP_GET_THREAD_NUM
type ty
complex :: cc(5)
end type ty
type(ty),save :: obj
!$omp threadprivate(pp,obj)
complex ::  pp = (5,6)
complex ::  dd = (2,1)
complex,pointer::ptr
complex,target::tar1 =(2,1)
!$omp threadprivate(dd)
dd = pp
!$omp parallel 
data obj%cc(1:5:2)%im,obj%cc(1:5:2)%re /3*5,3*6/
ptr=>tar1
!$omp end parallel
if(any(obj%cc(1:5:2) .ne. (6,5)))print*,101,obj%cc(1:5:2)
if(ptr.ne.(2,1))print*,"101"
print*,"PASS"
end
