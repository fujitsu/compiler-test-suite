  REAL*8 A1(1000),B1(1000),C1(1000),L(1000),M(1000)
  REAL*8 A2(1000),B2(1000),C2(1000)

  DO I=1,1000
     A1=I
     DO J=1,1000
        L(J)=J/10
        B1(J)=EXP(L(J))
     ENDDO
     DO K=1,1000
        M(K)=K+3
        C1(K)=LOG(M(K))
     ENDDO
  ENDDO

  DO I=1,1000
     A2=I
     DO J=1,1000
        L(J)=J/10
        B2(J)=EXP(L(J))
     ENDDO
     DO K=1,1000
        M(K)=K+3
        C2(K)=LOG(M(K))
     ENDDO
  ENDDO

  DO I=1,1000
     if (DABS(1-(A1(I)/A2(I))) > 0.00001) then
        print *,"NG",A1(I),A2(I)
     end if
     if (DABS(1-(B1(I)/B2(I))) > 0.00001) then
        print *,"NG",B1(I),B2(I)
     end if
     if (DABS(1-(C1(I)/C2(I))) > 0.00001) then
        print *,"NG",C1(I),C2(I)
     end if
  END DO
  print *,"OK"

END program
