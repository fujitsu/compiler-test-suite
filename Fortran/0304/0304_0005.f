      SUBROUTINE INTG1T
      COMMON /VD9V/L1KQ(100)
      IF(IFL.gt.0) goto 320
      RETURN
  320 continue
      DO 970 I = 1,NE
      L1KQ(I) = 1
  970 CONTINUE
 1090 DO 1130 J = 1,KQQ2
      IF(J.NE.0) GO TO 1110
 1100 continue
      IF(J) 1130,1130,1100
 1110 continue
 1130 CONTINUE

      RETURN
      END

      END
