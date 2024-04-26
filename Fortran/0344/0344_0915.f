      INTEGER*4 A(10)/-12,6,-7,-5,15,6,-17,8,-9,10/
      INTEGER*4 AMAX,AMIN,IDX1,IDX2
C
      AMAX = 0
      IDX1 = 0
      IDX2 = 0
      DO 10 I=1,10
        IF(IABS(A(I)).GT.AMAX)THEN
          AMAX = IABS(A(I))
          IDX1 = I
        ENDIF
 10   CONTINUE
      AMIN = AMAX
      DO 20 I=1,10
        IF(IABS(A(I)).LT.AMIN)THEN
          AMIN = IABS(A(I))
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
