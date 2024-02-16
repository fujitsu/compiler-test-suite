integer,external :: OMP_GET_THREAD_NUM

  complex :: cc(5) = (3,4)

!$omp threadprivate(cc)
!$omp single 
        cc = (7,8)
        cc(1:5:2)%im = 7
!$omp end single copyprivate(cc)
if(any(cc(1:5:2) .ne. (7,7)))print*,101
print*,"PASS"
end
