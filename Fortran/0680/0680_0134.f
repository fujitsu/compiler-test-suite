      REAL*4 A(10),AX
      INTEGER*4 BX
      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA AX/1/,BX/0/

      DO 11 I=1,10
        IF(AX.LE.A(I)) THEN
          AX=A(I)
          BX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',AX
      WRITE(6,*) 'MAX INDEX ***  ',BX
      STOP
      END
