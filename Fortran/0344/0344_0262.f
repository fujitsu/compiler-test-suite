      REAL * 4 A(10),B(10),C(10),D(10)
      INTEGER * 4 L(10),N,M,E(10)
      LOGICAL * 4 P(10)

      DATA P/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA A/5*5.,5*1./
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/10,9,8,7,6,5,4,3,2,1/
      DATA D/2,1,2,1,2,1,2,1,2,1/
      DATA E/2,1,2,1,2,1,2,1,2,1/
      DATA M/10/

      N=0
      DO 10 I=1,M
        N=N+1
        L(I)=I
        IF (P(I)) THEN
          A(I)=A(I)+B(I)
        ELSE
          A(I)=A(I)-B(I)
          IF (A(I).GT.0) THEN
            B(I)=A(I)+I
            GOTO 10
          ENDIF
        ENDIF
        IF (B(I).NE.A(I)) THEN
          C(I)=SIN(C(I))
          D(L(I))=E(L(I))+N
        ENDIF
10    CONTINUE

      
      WRITE(6,99) A,B,C,D
99    FORMAT(5F10.5)

      STOP
      END
