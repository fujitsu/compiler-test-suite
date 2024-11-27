PROGRAM main
  INTEGER, TARGET  ::A,B=0
  INTEGER, POINTER ::P
  A=100
  B=50
  PRINT '("[***-1] LOC(A)=",z17.16," A=",i3," LOC(B)=",z17.16" B=",i3)',LOC(A),A,LOC(B),B
  !$OMP PARALLEL PRIVATE(P)
    P=>A
    PRINT '("[PRL-1] LOC(P)=",z17.16," P=",i3)',LOC(P),P
    !$OMP TASK FIRSTPRIVATE(P)
      PRINT '("[TSK-1] LOC(P)=",z17.16," P=",i3)',LOC(P),P
      P=>B
      PRINT '("[TSK-2] LOC(P)=",z17.16," P=",i3)',LOC(P),P
    !$OMP END TASK
    !$OMP TASKWAIT
    PRINT '("[PRL-2] LOC(P)=",z17.16," P=",i3)',LOC(P),P
  !$OMP END PARALLEL
end PROGRAM main
