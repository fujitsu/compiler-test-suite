  REAL*8 A1(10),B1(10),K,L
  REAL*8 C1(10),D1(10)

  DO I=1,10
     K=I*3
     A1(I)=EXP(K)
     DO j=1,10
        L=J**2
        B1(J)=EXP(L)
     ENDDO
  ENDDO

  DO I=1,10
     K=I*3
     C1(I)=EXP(K)
     DO j=1,10
        L=J**2
        D1(J)=EXP(L)
     ENDDO
  ENDDO

  DO I=1,10
     if (DABS(1-(A1(I)/C1(I))) > 0.00001) then
        print *,"NG",A1(I),C1(I)
     end if
     if (DABS(1-(B1(I)/D1(I))) > 0.00001) then
        print *,"NG",B1(I),D1(I)
     end if
  END DO
  print *,"OK"

END program
