      LOGICAL    L(10),LL(10,10),LLL(10,10)
      DATA       L/10*.FALSE./
      DATA     LLL/100*.TRUE./
      DIMENSION  A(10),B(10),C(10,10)
      DATA       A,B,C/10*1.0,10*2.0,100*3.0/
      DO 5 J=1,10
        DO 5 I=1,10
          IF(I.GT.5) THEN
            LL(I,J) = .FALSE.
          ELSE
            LL(I,J) = .TRUE.
          ENDIF
    5 CONTINUE
      DO 10 J=1,10
        DO 10 I=1,10
          L(I) = LL(I,J) .AND. LLL(I,J)
          IF(L(I)) GO TO 10
          A(I) = B(I) + C(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
