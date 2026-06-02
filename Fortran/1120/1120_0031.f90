PROGRAM MAIN
  INTEGER A,B,VAR
  call omp_set_num_threads(2)
  A=100
  B=200
  PRINT *,A
!$OMP PARALLEL 
    PRINT *,B
!$OMP master
!$OMP master
    PRINT *,B
!$OMP END master
!$OMP END master
!$OMP TASKWAIT
    PRINT *,B
!$OMP END PARALLEL

END PROGRAM MAIN
