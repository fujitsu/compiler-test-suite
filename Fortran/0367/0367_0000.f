      program main
      integer OMP_GET_THREAD_NUM
!$OMP PARALLEL
      write(6,*)"Thread ID => ",OMP_GET_THREAD_NUM(),": OK"
!$OMP END PARALLEL
      write(6,*)"OK"
      end
