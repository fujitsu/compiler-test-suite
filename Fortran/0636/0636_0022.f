      PROGRAM MAIN
      REAL*4 X(10,10),Y(10,10)/100*2.0/,Z(10,10)/100*1.0/
      REAL*4 WW1,WW2,WW3
      INTEGER*4 M1/1/,M2/3/,M3/5/
      PRINT *,' PROGRAM  '
      do i=1,10
         do j=1,10
            x(i,j) = 10*(i-1)+j
         enddo
      enddo
      DO 1 J=1,10
        DO 10 I=M1,M2,M3
          Y(I,J) = X(I,J)
  10    CONTINUE
        WW1 = (M1 + M2) * M1 + M2
        WW2 = (M1 + M2) * M1 + M2
        WW3 = (M1 + M2) * M1 + M2
        DO 20 I=M1,M2,M3
          WW1 = Y(I,J)
          WW2 = Z(I,J)
          WW3 = WW1 + WW2
          X(I,J) = WW3
  20    CONTINUE
        DO 30 I=M1,M2,M3
          X(I,J) = X(I,J) + Z(I,J)
  30    CONTINUE
  1   CONTINUE
      STOP
      END
