      REAL*4 A(10),AX,BX

      DATA A/1,2,3,4,5,6,7,8,9,10/
      DATA AX/1/

      BX=0
      AX=A(1)
      DO 11 I=1,10
        IF(AX.GE.A(I)) THEN
          AX=A(I)
          BX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',AX
      WRITE(6,*) 'MAX INDEX ***  ',BX
      STOP
      END
