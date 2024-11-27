PROGRAM MAIN
  INTEGER A,B,VAR
  POINTER (P,VAR)
  A=100
  B=200
  PRINT '("[***-1] LOC(A)=",z17.16," A=",i3," LOC(B)=",z17.16," B=",i3)',LOC(A),A,LOC(B),B
  !$OMP PARALLEL PRIVATE(P)
    P=LOC(A)
    PRINT '("[PRL-1] LOC(P)=",z17.16," P=",z17.16," VAR=",i3)',LOC(P),P,VAR
    !$OMP TASK FIRSTPRIVATE(P)
      PRINT '("[TSK-1] LOC(P)=",z17.16," P=",z17.16," VAR=",i3)',LOC(P),P,VAR
      P=LOC(B)
      PRINT '("[TSK-2] LOC(P)=",z17.16," P=",z17.16," VAR=",i3)',LOC(P),P,VAR
    !$OMP END TASK
    !$OMP TASKWAIT
    PRINT '("[PRL-2] LOC(P)=",z17.16," P=",z17.16," VAR=",i3)',LOC(P),P,VAR
  !$OMP END PARALLEL
END PROGRAM MAIN
