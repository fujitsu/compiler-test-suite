integer,external :: OMP_GET_THREAD_NUM

!$omp threadprivate( cc)
  complex :: cc(3) = (3,4)
  real :: pp = 2.0
!$omp threadprivate( pp )

pp = 2.0
!$omp parallel 
        cc(1)%im = 1
        cc(2)%im = 2
        cc(1)%re = 3
        cc(2)%re = 4
        pp = 3.0
!$omp end parallel
if(cc(1)/= (3,1))print*,101,cc(1)
if(cc(2)/= (4,2))print*,102,cc(2)
if(pp/= 3.0)print*,102,pp
print*,"Pass"
end
