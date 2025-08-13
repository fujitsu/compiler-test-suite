integer,external :: OMP_GET_THREAD_NUM

!$omp threadprivate( cc )
!$omp threadprivate( pp )
  complex :: cc 
  real :: pp 
  integer,pointer::ptr
  integer,target::t1
t1 =20
!$omp parallel 
data cc,pp /(7,6),3.0/
ptr => t1
if(omp_get_thread_num().eq.1)then
if(cc/= (7,6))print*,101,cc
if(pp/= 3.0)print*,102,pp
if(associated(ptr).neqv..true.)print*,"109",associated(ptr)
endif
if(omp_get_thread_num().eq.0)then
if(cc/= (7,6))print*,103,cc
if(pp/= 3.0)print*,104,pp
if(associated(ptr).neqv..true.)print*,"109",associated(ptr)
endif
!$omp end parallel
print*,"PASS"
end
