      INTEGER*4 A(10)/1,2,3,4,5,6,7,8,9,0/
      INTEGER*4 IDX1,IDX2
C
      IDX1 = 1
      IDX2 = 1
      DO 10 I=1,10
        IF(A(I).GT.A(IDX1))THEN
          IDX1 = I
        ENDIF
 10   CONTINUE
      DO 20 I=1,10
        IF(A(I).LT.A(IDX2))THEN
          IDX2 = I
        ENDIF
 20   CONTINUE
      WRITE(6,*) ' '
      WRITE(6,*) ' IDX = ',IDX1
      WRITE(6,*) ' '
      WRITE(6,*) ' IDX = ',IDX2
      WRITE(6,*) ' '
      STOP
      END
