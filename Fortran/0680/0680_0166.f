      INTEGER*4 A(10),AX,BX,CX,B(10)

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA B/1,5,3,-10,55,0,55,-10,1,7/
      DATA AX/1/,BX/0/

      DO 11 I=1,10
        IF(AX.LE.A(I)+B(I)) THEN
          AX=A(I)+B(I)
          BX=I
          CX=B(I)
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',AX
      WRITE(6,*) 'MAX INDEX ***  ',BX
      STOP
      END
