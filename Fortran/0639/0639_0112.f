      INTEGER  I1(2048),I2(2048)
      LOGICAL  L(2048)
      DATA     I2/2048*20./

      DO 10 I=1,2048
        L(I) = MOD(I,2) .EQ. 0
   10 CONTINUE
      CALL  SUB(I1,I2,L,2048)
      END

      SUBROUTINE  SUB(I1,I2,L,N)
      INTEGER  I1(N),I2(N)
      LOGICAL  L(N)

      DO 10 I=1,10
        I1(I) = I
        IF(L(I)) THEN
          I2(I) = I
        ENDIF
   10 CONTINUE
      PRINT  *,(I1(I),I2(I),I=1,10)

      DO 20 I=1,2048
        I1(I) = I
        IF(L(I)) THEN
          I2(I) = I
        ENDIF
   20 CONTINUE
      PRINT  *,(I1(I),I2(I),I=1,2048,100)

      DO 30 I=1,N,20
        I1(I) = I
        IF(L(I)) THEN
          I2(I) = I
        ENDIF
   30 CONTINUE
      PRINT  *,(I1(I),I2(I),I=1,2048,128)
      RETURN
      END
