  REAL*8 A1(100),B1(100),C1(100)
  REAL*8 A2(100),B2(100),C2(100)
  DO I=1,100
     B1(I)=I*3
     A1(I)=LOG(B1(I))
     C1(I)=A1(I)**B1(I)
  ENDDO

  DO I=1,100
     B2(I)=I*3
     A2(I)=LOG(B2(I))
     C2(I)=A2(I)**B2(I)
  ENDDO

  DO I=1,100
     if (DABS(1-(A1(I)/A2(I))) > 0.00001) then
        print *,"NG",A1(I),A2(I)
     end if
     if (B1(I) /= B2(I)) then
        print *,"NG",B1(I),B2(I)
     end if
     if (DABS(1-(C1(I)/C2(I))) > 0.00001) then
        print *,"NG",C1(I),C2(I)
     end if
  END DO
  print *,"OK"

END program
