      PARAMETER(N=100)
      LOGICAL L(N)
      REAL    A(N)
      REAL    ANS

      DO 1 I=1,N
        L(I)= MOD(I,2).EQ.0
        A(I)= I*I
1     CONTINUE
      WRITE(6,*) L
      WRITE(6,*) A

      ANS=A(1)
      DO 10 I=1,N
        IF(L(I)) THEN
          IF(ANS .LT. A(I)) THEN
            ANS=A(I)
          ENDIF
        ENDIF
10    CONTINUE

      STOP
      END
