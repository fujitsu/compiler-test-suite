PROGRAM MAIN
  INTEGER, TARGET  ::A,B=0
  INTEGER, POINTER ::P
 call omp_set_num_threads(2)
  A=100
  B=50
  !$OMP PARALLEL PRIVATE(P)
    P=>A
    !$OMP TASK
      PRINT '("[TSK-1] P=",i3)',P
      P=>B
    !$OMP END TASK
  !$OMP END PARALLEL
end PROGRAM main
