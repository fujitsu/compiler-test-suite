      REAL A(10),B(10),C(10)
      REAL D(10,10),E(10,10)
      LOGICAL L(10)
      DATA N,M,NN/1,10,1/
      DATA L/.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,
     +       .TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE./
      DO 10 J=1,10,1
      DO 10 I=1,M,N
        A(I)=J
        B(I)=A(I)+1
        C(I)=A(I)+B(I)
        D(J,I)=B(I)
        E(I,J)=C(I)
   10 CONTINUE

      DO 20 J=1,10,1
      DO 20 I=N,N+9,NN
        A(I)=D(I,J)+E(I,J)
        IF (L(I)) THEN
          IF (A(I).GT.0) THEN
            B(I)=A(I)+C(I)
          ELSE
            B(I)=SIN(A(I))+COS(B(I))
            IF (B(I).NE.C(I)) THEN
              C(I)=A(I)+C(I)
            ELSE
              GOTO 20
            ENDIF
          ENDIF
          B(I)=A(I)*C(I)
        ENDIF
20    CONTINUE

      WRITE(6,1) A,B,C,D,E
 1    FORMAT(5F11.3)
      STOP
      END
