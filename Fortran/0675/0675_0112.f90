  REAL*8 A1(100),B1(100)
  REAL*8 A2(100),B2(100)
  DO I=1,100
     B1(I)=I*3
     A1(I)=EXP(B1(I))
  ENDDO

  DO I=1,100
     B2(I)=I*3
     A2(I)=EXP(B2(I))
  ENDDO

  DO I=1,100
     if (B1(I) /= B2(I)) then
        print *,"NG",B1(I),B2(I)
     end if
  END DO

  DO I=1,100
     if (DABS(1-(A1(I)/A2(I))) > 0.00001) then
        print *,"NG",A1(I),A2(I)
     end if
  END DO
  print *,"OK"

END program
