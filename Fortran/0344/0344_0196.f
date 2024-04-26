      REAL * 4 A(20),B(20),C(20),D(20)
      LOGICAL * 4 L1(20)
      DATA L1/5*.TRUE.,5*.FALSE.,5*.TRUE.,5*.FALSE./
      DATA A/20*1./,B/20*2./,C/20*3./,D/20*4./
C
C
      DO 10 J=1,20
        DO 20 I=1,J
          IF (L1(I)) THEN
            A(I)=I+J
          ELSE
            IF (A(I).GT.0) THEN
              B(I)=A(I)+1.+D(I)
            ENDIF
          ENDIF
20      CONTINUE
        DO 21 K=J,1
         IF (J.GT.5) THEN
           GOTO 21
         ENDIF
21       C(K)=C(K)+K*(-J)
10    CONTINUE
C
      WRITE(6,*) A,B,C
      STOP
         END
