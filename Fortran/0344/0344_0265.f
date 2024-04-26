      REAL * 4 A(10),B(10),C(10),D(10)
      INTEGER * 4 L(10)
      LOGICAL * 4 P(10)
      DATA P/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     +        .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA B/1,2,3,4,5,6,7,8,9,10/
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA D/10*0/
      DATA M/10/
      DATA L/1,2,3,4,5,6,7,8,9,10/

      DO 1 I=1,M
        IF (P(I)) THEN
          A(L(I))=B(L(I))+C(L(I))
          L(I)=D(L(I))+I
        ENDIF
1     CONTINUE

      
      WRITE(6,90) A
90    FORMAT(5F10.5)
      WRITE(6,91) L
91    FORMAT(5I5)
      STOP
      END
