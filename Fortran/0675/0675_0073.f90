  REAL*8 A1(100),B1(100),C1(100),D1(100)
  REAL*8 E1(100),F1(100),G1(100),H1(100)
  DO I=1,100
     A1(I)=I*3
     B1(I)=EXP(A1(I))
     C1(I)=I+I*2*1
     D1(I)=EXP(C1(I))
  ENDDO

  DO I=1,100
     E1(I)=I*3
     F1(I)=EXP(E1(I))
     G1(I)=I+I*2*1
     H1(I)=EXP(G1(I))
  ENDDO

  DO I=1,100
     if (A1(I) /= E1(I)) then
        print *,"NG",A1(I),E1(I)
     end if
     if (C1(I) /= G1(I)) then
        print *,"NG",C1(I),G1(I)
     end if
  END DO

  DO I=1,100
     if (DABS(1-(B1(I)/F1(I))) > 0.00001) then
        print *,"NG",B1(I),F1(I)
     end if
     if (DABS(1-(D1(I)/H1(I))) > 0.00001) then
        print *,"NG",D1(I),H1(I)
     end if
  END DO
  print *,"OK"
END program
