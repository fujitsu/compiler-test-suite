      COMPLEX*8 C801(20),C802(20)/20*1/,C803(20)/20*1/
      COMPLEX*16 C1601(20),C1602(20)/20*1/,C1603(20)/20*1/
      DATA C801/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      DATA C1601/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
C
      DO 10 I=1,10
        N1 = I
        N2 = I - 9
        N3 = I - 12
   10 CONTINUE
C
      DO 20 I=N1,N2,N3
        IF (REAL(C801(I)).LE.MOD(I,5)) GOTO 20
          C802(I) = C801(I) + I
          IF (REAL(C1601(I)).LE.N3) THEN
            C802(I) = C802(I) - C1601(I)
            GOTO 21
          ELSE
            C802(I) = C802(I) + C1601(I)
          ENDIF
          C1602(I) = -C802(I)
          GOTO 22
   21     C1602(I) = C1602(I) + C802(I)
   22     IF (REAL(C1602(I))+5.LT.0) GOTO 20
            C802(I) = C1602(I) + C1601(I)
   20     C802(I) = C802(I) + N2
      WRITE(6,1) C802
C
      DO 30 I=1,20
        N1 = I
        N2 = I - 19
        N3 = I - 22
   30 CONTINUE
C
      DO 40 I=N1,N2,N3
        IF (REAL(C801(I)).LE.MOD(I,5)) GOTO 40
          C803(I) = C801(I) + I
          IF (REAL(C1601(I)).LE.N3) THEN
            C803(I) = C803(I) - C1601(I)
            GOTO 41
          ELSE
            C803(I) = C803(I) + C1601(I)
          ENDIF
          C1603(I) = -C803(I)
          GOTO 42
   41     C1603(I) = C1603(I) + C803(I)
   42     IF (REAL(C1603(I))+5.LT.0) GOTO 40
            C803(I) = C1603(I) + C1601(I)
   40     C803(I) = C803(I) + N2
      WRITE(6,1) C803
    1 FORMAT(2(2X,1H(,E15.6,1H,,E15.6,1H)))
      STOP
      END
