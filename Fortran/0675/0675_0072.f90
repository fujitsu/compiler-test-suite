  REAL*8 A1(100),B1(100)
  REAL*8 C1(100),D1(100)

  DO I=1,100
     B1(I)=I*3
     A1(I)=EXP(B1(I))
  ENDDO

  DO I=1,100
     C1(I)=I*3
     D1(I)=EXP(C1(I))
  ENDDO

  DO I=1,100
     if (B1(I) /= C1(I)) then
        print *,"NG",B1(I),C1(I)
     end if
  END DO

  DO I=1,100
     if (DABS(1-(A1(I)/D1(I))) > 0.00001) then
        print *,"NG",A1(I),D1(I)
     end if
  END DO
  print *,"OK"
END program
