      INTEGER*4 A(10),AX,BX,AY,BY

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA AX/1/,BX/0/
      DATA AY/1/,BY/0/

      DO 11 I=1,10
        IF(AX.LE.A(I)) THEN
          AX=A(I)
          BX=I
        ELSE
          AY=A(I)
          BY=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',AX
      WRITE(6,*) 'MAX INDEX ***  ',BX
      WRITE(6,*) 'MIN DATA ****  ',AY
      WRITE(6,*) 'MIN INDEX ***  ',BY
      STOP
      END
