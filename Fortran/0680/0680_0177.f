      INTEGER*4 A(20),IMIN,IDATA

      DATA A/3,5,3,-10,55,0,55,-10,7,-1,0,0,0,-10,4,-10,-3,6,7,7/
      DATA IMIN/1/,IDATA/0/

      DO 11 I=1,20
        IF(A(I).LE.A(IMIN)) THEN
          IF(A(I).LE.0) THEN
              IMIN=I
          ENDIF
        ENDIF
   11 CONTINUE
      IDATA=A(IMIN)
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
