      REAL*8 A(10),AX,BX,DIF

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA AX,BX,DIF/1,0,0/

      DO 11 I=1,10
        DIF=AX-A(I)
        IF(DIF.LE.0) THEN
          AX=A(I)
          BX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',AX
      WRITE(6,*) 'MAX INDEX ***  ',BX
      STOP
      END
