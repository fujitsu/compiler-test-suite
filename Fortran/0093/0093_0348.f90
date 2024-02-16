integer,external :: OMP_GET_THREAD_NUM

!$omp threadprivate( cc)
  complex :: cc = (3,4)
  real :: pp = 2.0
!$omp threadprivate( pp )

pp = 2.0
!$omp parallel 
        cc%im = 6
        cc%re = 7
        pp = 3.0
!$omp end parallel
if(cc/= (7,6))print*,101,cc
if(pp/= 3.0)print*,102,pp
print*,"Pass"
end
