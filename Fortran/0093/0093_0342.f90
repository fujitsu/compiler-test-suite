integer,external :: OMP_GET_THREAD_NUM

  complex :: cc = (3,4)

!$omp threadprivate(cc)
!$omp single 
        cc = (7,8)
        cc%im = 7
!$omp end single copyprivate(cc)
if(cc .ne. (7,7))print*,101
print*,"PASS"
end
