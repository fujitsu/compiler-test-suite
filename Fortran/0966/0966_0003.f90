PROGRAM MAIN
  INTEGER,DIMENSION(4)::A
  A=10
  PRINT '("M-***-1: LOC(A)=",z17.16," A=[",4i3," ]")',LOC(A),A
  !$OMP PARALLEL PRIVATE(A)
    DO I=1,4
       A(I)=20
    END DO
    PRINT '("M-PRL-1: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A),A(1),A(2),A(3),A(4)
    CALL SUB(A)
    PRINT '("M-PRL-2: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A),A(1),A(2),A(3),A(4)
  !$OMP END PARALLEL
  PRINT '("M-***-2: LOC(A)=",z17.16," A=[",4i3," ]")',LOC(A),A
END PROGRAM MAIN
SUBROUTINE SUB(A)
  INTEGER,DIMENSION(*):: A
  PRINT '("S-***-1: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A),A(1),A(2),A(3),A(4)
  !$OMP TASK FIRSTPRIVATE(A)
    PRINT '("S-TSK-1: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A(1)),A(1),A(2),A(3),A(4)
    DO I=1,4
       A(I)=30
    END DO
    PRINT '("S-TSK-2: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A(1)),A(1),A(2),A(3),A(4)
  !$OMP END TASK
  !$OMP TASKWAIT
  PRINT '("S-***-2: LOC(A)=",z17.16," A=[ ",i2," ",i2," ",i2," ",i2," ]")',LOC(A),A(1),A(2),A(3),A(4)
END SUBROUTINE SUB
