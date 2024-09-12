      INTEGER*4 A(10),AX,BX,DIF

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA AX,BX,DIF/1,0,0/

      DO 11 I=1,10
        DIF=AX-A(I)
        IF(DIF.GE.0) THEN
          AX=A(I)
          BX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MIN DATA ****  ',AX
      WRITE(6,*) 'MIN INDEX ***  ',BX
      STOP
      END
