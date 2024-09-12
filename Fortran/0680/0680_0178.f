      INTEGER*4 A(100),IMIN,IDATA

      DATA A/3,5,3,-10,55,0,55,-10,7,1,90*2/
      DATA IMIN/1/,IDATA/2/

      DO 11 I=1,10
        IF(A(I+I*2).LE.A(IMIN+I*2)) THEN
          IMIN=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
