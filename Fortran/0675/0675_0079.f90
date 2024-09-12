  REAL*8 A1(100),B1(100),C1(100),L(100),M(100)
  REAL*8 D1(100),E1(100),F1(100)
  DO I=1,100
     A1=I
     DO J=1,100
        L(J)=J*2
        B1(J)=EXP(L(J))
     ENDDO
     DO K=1,100
        M(K)=K+3
        C1(K)=EXP(M(K))
     ENDDO
  ENDDO

  DO I=1,100
     D1=I
     DO J=1,100
        L(J)=J*2
        E1(J)=EXP(L(J))
     ENDDO
     DO K=1,100
        M(K)=K+3
        F1(K)=EXP(M(K))
     ENDDO
  ENDDO

  DO I=1,100
     if (A1(I) /= D1(I)) then
        print *,"NG",A1(I),D1(I)
     end if
     if (DABS(1-(B1(I)/E1(I))) > 0.00001) then
        print *,"NG",B1(I),E1(I)
     end if
     if (DABS(1-(C1(I)/F1(I))) > 0.00001) then
        print *,"NG",C1(I),F1(I)
     end if
  END DO
  print *,"OK"

END program
