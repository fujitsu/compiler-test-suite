      IMPLICIT REAL*8 (A-H,O-Z)

      DO 120 AL=1,10
      DO 120 J=1,10
  120 CONTINUE
      ii = 0
 5000 continue
      DO 460 I=1,10
      DO 460 K=1,10
  460 CONTINUE

      if (ii.ne.0) GO TO 5000
 5500 CONTINUE
      write(6,*) ' OK '
      END
