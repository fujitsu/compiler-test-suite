      program main
      DIMENSION ARY(10)
      DATA (ARY(I),I=1,10)/10*0.0/,SUM/0/
      CALL SUB(Z)
      IX=0
      DO 10 Z=10,Z+50,5
         IX=IX+1
         ARY(IX)=Z
 10   CONTINUE
      DO 20 IX2=1,IX
         SUM=SUM+ARY(IX2)
 20   CONTINUE
      if ( SUM .EQ. 45.0 ) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
      ENDIF
      STOP
      END

      SUBROUTINE SUB(A)
      A=-30
      RETURN
      END
