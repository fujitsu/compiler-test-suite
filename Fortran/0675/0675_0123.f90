  REAL*8 A1(100),B1(100),C1(100),D1(100)
  REAL*8 A2(100),B2(100),C2(100),D2(100)
  DO I=1,100
     B1(I)=I*3
     A1(I)=EXP(B1(I))
     C1(I)=I+I*2*1
     D1(I)=COS(C1(I))
  ENDDO

  DO I=1,100
     B2(I)=I*3
     A2(I)=EXP(B2(I))
     C2(I)=I+I*2*1
     D2(I)=COS(C2(I))
  ENDDO

  DO I=1,100
     if (DABS(1-(A1(I)/A2(I))) > 0.00001) then
        print *,"NG",A1(I),A2(I)
     end if
     if (B1(I) /= B2(I)) then
        print *,"NG",B1(I),B2(I)
     end if
     if (C1(I) /= C2(I)) then
        print *,"NG",C1(I),C2(I)
     end if
     if (DABS(1-(D1(I)/D2(I))) > 0.00001) then
        print *,"NG",D1(I),D2(I)
     end if
  END DO
  print *,"OK"

END program
