      PARAMETER(N=100)
      LOGICAL L(N)
      REAL    A(N)
      REAL    ANS

      DO 1 I=1,N
        L(I)=MOD(I,2).EQ.0
        A(I)=I*I
    1 CONTINUE

      ANS=(1)
      IDX=1
      DO 10 I=1,N
        IF(L(I)) THEN
          IF(ANS .LT. A(I)) THEN
            ANS=A(I)
            IDX=I
          ENDIF
        ENDIF
   10 CONTINUE

      WRITE(6,*) ' ANS= ',ANS,'    IDX= ',IDX
      STOP
      END
