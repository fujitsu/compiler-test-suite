      INTEGER*4 A(10),IMAX,IDATA,DIF

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA IMAX,IDATA,DIF/1,0,0/

      DO 11 I=1,10
        DIF=A(IMAX)-A(I)
        IF(DIF.LE.0) THEN
          IMAX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',IDATA
      WRITE(6,*) 'MAX INDEX ***  ',IMAX
      STOP
      END
