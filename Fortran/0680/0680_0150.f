      INTEGER*4 A(10),IMIN,IDATA

      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA IMIN/1/,IDATA/0/

      DO 11 I=1,10
        IF(A(IMIN).GE.A(I)) THEN
          IDATA=A(I)
          IMIN=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
