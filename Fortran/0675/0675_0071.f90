  REAL*8 A1(1000),B1(1000)
  REAL*8 C1(1000),D1(1000)
  DO I=1,1000
     A1(I)=I/2
     B1(I)=EXP(A1(I))
  ENDDO

  DO I=1,1000
     C1(I)=I/2
     D1(I)=EXP(C1(I))
  ENDDO

  DO I=1,1000
     if (A1(I) /= C1(I)) then
        print *,"NG",A1(I),C1(I)
     end if
  END DO
  DO I=1,1000
     if (DABS(1-(B1(I)/D1(I))) > 0.00001) then
         print *,"NG",B1(I),D1(I)
     end if
  END DO
  print *,"OK"
END program
