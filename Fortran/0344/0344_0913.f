      INTEGER*4 A(10)/1,2,3,4,5,6,7,8,9,0/
      INTEGER*4 AMAX,AMIN,IDX1,IDX2
      INTEGER*4 SA1/0/,SA2/0/
C
      AMAX = 0
      IDX1 = 0
      IDX2 = 0
      DO 10 I=1,10
        SA1 = A(I)-AMAX
        IF(SA1.GT.0)THEN
          AMAX = A(I)
          IDX1 = I
        ENDIF
 10   CONTINUE
      AMIN = AMAX
      DO 20 I=1,10
        SA2 = A(I)-AMIN
        IF(SA2.LT.0)THEN
          AMIN = A(I)
          IDX2 = I
        ENDIF
 20   CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) ' MAX = ',AMAX
      WRITE(6,*) ' IDX = ',IDX1
      WRITE(6,*) ' '
      WRITE(6,*) ' MIN = ',AMIN
      WRITE(6,*) ' IDX = ',IDX2
      WRITE(6,*) ' '
      STOP
      END
