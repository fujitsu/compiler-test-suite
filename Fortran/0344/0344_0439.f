      PROGRAM MAIN
      INTEGER A(10000),B(10000),C/1023/,D(10000)/10000*0/
      LOGICAL L1(10000)/10000*.TRUE./
      DO 10 I=1,10000
        A(I) = IAND(31,IBSET(I,0))
        B(I) = IBCLR(C,A(I))
        L1(I) = .NOT.(BTEST(B(I),A(I)))
        IF (L1(I)) THEN
          IF (A(I).LE.10000) THEN
            B(I) = IBCLR(A(I),A(I)) - B(I)
            D(I) = IBSET(B(I)**2,A(I))
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,1) (A(I),I=1,10000,50)
      WRITE(6,2) (B(I),I=1,10000,50)
      WRITE(6,3) (D(I),I=1,10000,50)
      WRITE(6,*) (L1(I),I=1,10000,50)
    1 FORMAT(15I5)
    2 FORMAT(8I9)
    3 FORMAT(5I14)
      STOP
      END
