      REAL       R1(2048),R2(2048)
      COMPLEX*16 C1(2048),C2(2048)
      LOGICAL    L(2048)

      DO 10 I=1,2048
        R1(I) = 2048. - FLOAT(I)
        R2(I) = I
        C1(I) = CMPLX(R1(I)/4000.,R2(I)/4000.)
        C2(I) = CMPLX(R2(I)/4000.,R1(I)/4000.)
        L(I) = MOD(I,2) .EQ. 0
   10 CONTINUE
      CALL  SUB(R1,R2,C1,C2,L,2048)
      END

      SUBROUTINE  SUB(R1,R2,C1,C2,L,N)
      REAL       R1(N),R2(N)
      COMPLEX*16 C1(N),C2(N)
      LOGICAL    L(N)

      DO 10 I=1,N,200
        R1(I) = SIN(R2(I))
   10 CONTINUE
      WRITE(6,100) (R1(I),I=1,N,200)
  100 FORMAT(' ',5F10.3)

      DO 20 I=1,2048
        IF(L(I)) THEN
          C1(I) = COS(C2(I))
        ENDIF
   20 CONTINUE
      WRITE(6,100) (C1(I),I=1,2048,256)

      DO 30 I=1,N,100
        R1(I) = SIN(R2(I))
        C1(I) = SIN(C2(I))

        R2(I) = COS(R1(I))
        C2(I) = COS(C1(I))
   30 CONTINUE
      WRITE(6,100) (R2(I),C2(I),I=1,N,100)
      RETURN
      END
