      INTEGER*4 A(10),B(10),T,S
      LOGICAL*4 L(10)
      DATA      L/5*.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  A,B/10*1,10*2/
      DO 10 I=1,10
       T=A(I)+B(I)
       S=T*I
       IF (L(I)) THEN
         A(I) = S + A(I)
       ENDIF
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) A
      STOP
      END
