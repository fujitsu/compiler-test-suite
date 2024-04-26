      LOGICAL L(10)
      INTEGER  I401(10)/10*0/,N/2/,M/0/
      INTEGER  I402(10)/4,5,6,7,8,9,10,1,2,3/
      DATA L/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     +       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
C
      DO 10 I=1,10,3
        IF (L(I)) THEN
          I401(I) = I402(I) + I
        ENDIF
   10 CONTINUE
      WRITE(6,*) I401
C
      DO 20 I=1,10,N
        IF (L(I)) THEN
          I401(I) = I402(I) + I
        ENDIF
   20 CONTINUE
      WRITE(6,*) I401
C
      DO 30 I=1,10
   30   M = I-6
C
      DO 40 I=1,10,M
        IF (L(I)) THEN
          I401(I) = I402(I) + I
        ENDIF
   40 CONTINUE
      WRITE(6,*) I401
C
      STOP
      END
