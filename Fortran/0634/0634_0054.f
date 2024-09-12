      A=10.01
      B=20.02
      C=30.03
          WRITE(6,10)
          WRITE(3,100) A,B,C
          REWIND 3
          READ(3,100)  X,Y,Z
          WRITE(6,200) X,Y,Z
          IF(.NOT.(A.EQ.X.AND.B.EQ.Y.AND.C.EQ.Z)) GO TO 1
          WRITE(6,20)
          STOP
    1     WRITE(6,30)
          STOP
   10 FORMAT(6X,'====== FORTRAN ====== ... H0000050'//)
   20 FORMAT(21X,'H0000050  OK'//6X,'END RUN UNIT')
   30 FORMAT(21X,'H0000050  NG'//6X,'END RUN UNIT')
  100 FORMAT(3F8.2)
  200 FORMAT(10X,'X=',F8.2,',Y=',F8.2,',Z=',F8.2/)
          END
