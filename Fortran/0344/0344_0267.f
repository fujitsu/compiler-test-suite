      LOGICAL L(10)
      INTEGER  I401(10),N/3/,M/1/,I403/0/
      INTEGER  I402(10)/9,7,5,3,1,10,8,6,4,2/
      INTEGER  LIST(10)/1,3,5,7,9,2,4,6,8,10/
      DATA I401/10*0/
      DATA L/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
C
      DO 10 I=1,10
        IF (L(I)) THEN
          I401(2) = I402(I) + I
        ENDIF
   10 CONTINUE
      WRITE(6,*) I401
C
      DO 20 I=1,10
        IF (L(I)) THEN
          I401(N) = I402(I) + I
        ENDIF
   20 CONTINUE
      WRITE(6,*) I401
C
      DO 25 I=1,10
   25   M = I - 1
C
      DO 30 I=1,10
        IF (L(I)) THEN
          I401(M) = I402(I) + I
        ENDIF
   30 CONTINUE
      WRITE(6,*) I401
C
      DO 33 I=1,10
   33  M = I - 2
C
      DO 35 I=1,10
        IF (L(I)) THEN
          I401(LIST(M)) = I402(I) + I
        ENDIF
   35 CONTINUE
      WRITE(6,*) I401
C
      DO 40 I=1,10
        IF (L(I)) THEN
          I403 = I402(I) + I
        ENDIF
   40 CONTINUE
C
      WRITE(6,*) I403
      STOP
      END
