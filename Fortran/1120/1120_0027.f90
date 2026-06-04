PROGRAM MAIN
  !$ USE OMP_LIB
  INTEGER A
  NAMELIST /TEST/ A
  A=100
  !$ CALL OMP_SET_NUM_THREADS(1)
  PRINT *,"-----------------------------------"
  WRITE (*,TEST)
  !$OMP PARALLEL DEFAULT(FIRSTPRIVATE)
    A=10
    PRINT *,"-----------------------------------"
    WRITE (*,TEST)
    !$OMP TASK
      PRINT *,"-----------------------------------"
      WRITE (*,TEST)
      A=20
      WRITE (*,TEST)
    !$OMP END TASK
    !$OMP TASKWAIT
    PRINT *,"-----------------------------------"
    WRITE (*,TEST)
  !$OMP END PARALLEL
  PRINT *,"-----------------------------------"
  WRITE (*,TEST)
  PRINT *,"-----------------------------------"
END PROGRAM
