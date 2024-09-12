      INTEGER*4 A(10),IMIN,IDATA,DIF

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA IMIN,IDATA,DIF/1,0,0/

      DO 11 I=1,10
        DIF=A(IMIN)-A(I)
        IF(DIF.GE.0) THEN
          IDATA=A(I)
          IMIN=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
