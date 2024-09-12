      DO 18 MM=1,10
         CALL CLR(493)
 18   continue
      PRINT *,'pass'
      END
      SUBROUTINE CLR(I1)
      do 6 j = 1,10
 7    IF (I1.NE.99999) goto 1
 6    continue
1     continue
      RETURN
      END
