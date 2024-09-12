      PROGRAM MAIN
      REAL*8  A(2,2,2,2,2,20,2)/1280*0/
      REAL*8  B(2,2,2,2,2,20,2)/1280*0/
      REAL*8  AA(1280),BB(1280)
      EQUIVALENCE (AA,BB)
      DATA N/2/
      BB(50) = 0
      DO 10 I1 = 1,N
        DO 20 I2 = 1,N
          DO 30 I3 = 1,N
            DO 40 I4 = 1,N
              DO 50 I5 = 1,N
                DO 60 I6 = 1,N
                        DO 91 J1 = 1,10
                          A(I1,I2,I3,I4,I5,J1,I6) = J1 * J1
                          IF(A(I1,I2,I3,I4,I5,J1,I6).GT.1)THEN
                            A(I1,I2,I3,I4,I5,J1,I6) = - 10
                          ENDIF
   91                   CONTINUE
                        DO 92 J2 = 1,10
                          B(I1,I2,I3,I4,I5,J2,I6) = I1*I2 + I3*I4 -J2
   92                   CONTINUE
   90                 CONTINUE
   80               CONTINUE
   70             CONTINUE
   60           CONTINUE
   50         CONTINUE
   40       CONTINUE
   30     CONTINUE
   20   CONTINUE
   10 CONTINUE
      AA(100) = BB(50)
      PRINT*,A,B
      STOP
      END
