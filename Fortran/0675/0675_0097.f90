  REAL*8 A(10),B(12),C(10),D(10),E(10,10),G(11),H(11),X(10),Y(10),Z(10)
  REAL*8 AX(10),BX(12),CX(10),DX(10),EX(10,10),GX(11),HX(11),XX(10),YX(10),ZX(10)

  REAL*8 A1(10),B1(12),C1(10),D1(10),E1(10,10),G1(11),H1(11),X1(10),Y1(10),Z1(10)
  REAL*8 A2(10),B2(12),C2(10),D2(10),E2(10,10),G2(11),H2(11),X2(10),Y2(10),Z2(10)

  k=2
  l=2
  B=1
  G=1
  H=1
  E=1

  DO i=1,10
     DO j=1,10
        A(j)=i+1
        B(j+2)=i+2
        C(j)=EXP(A(i))
        D(j)=EXP(B(i))
        DO n=1,10
           E(i,n)=n**l
           G(n+1)=EXP(E(i,n))
           H(n+1)=EXP(E(n,i))
        ENDDO
     ENDDO
     X(i)=EXP(A(i))+EXP(B(i))+EXP(E(1,2))+k**l
     Y(i)=EXP(B(i))
     Z(i)=EXP(A(i))
  ENDDO

  k=2
  l=2
  BX=1
  GX=1
  HX=1
  EX=1

  DO i=1,10
     DO j=1,10
        AX(j)=i+1
        BX(j+2)=i+2
        CX(j)=EXP(AX(i))
        DX(j)=EXP(BX(i))
        DO n=1,10
           EX(i,n)=n**l
           GX(n+1)=EXP(EX(i,n))
           HX(n+1)=EXP(EX(n,i))
        ENDDO
     ENDDO
     XX(i)=EXP(AX(i))+EXP(BX(i))+EXP(EX(1,2))+k**l
     YX(i)=EXP(BX(i))
     ZX(i)=EXP(AX(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(C(i)/CX(i))) > 0.00001) then
        print *,"NG",C(i),CX(i)
     end if
     if (DABS(1-(D(i)/DX(i))) > 0.00001) then
        print *,"NG",D(i),DX(i)
     end if
     if (DABS(1-(X(i)/XX(i))) > 0.00001) then
        print *,"NG",X(i),XX(i)
     end if
     if (DABS(1-(Y(i)/YX(i))) > 0.00001) then
        print *,"NG",Y(i),YX(i)
     end if
     if (DABS(1-(Z(i)/ZX(i))) > 0.00001) then
        print *,"NG",Z(i),ZX(i)
     end if
  END DO

  DO i=1,11
     if (DABS(1-(G(i)/GX(i))) > 0.00001) then
        print *,"NG",G(i),GX(i)
     end if
     if (DABS(1-(H(i)/HX(i))) > 0.00001) then
        print *,"NG",H(i),HX(i)
     end if
  END DO

  k=2
  l=2
  B1=1
  G1=1
  H1=1
  E1=2
  DO i=1,10
     DO j=1,10
        A1(j)=i+1
        B1(j+2)=i+2
        C1(j)=EXP(A1(i))
        D1(j)=EXP(B1(i))

        DO n=1,10
           E1(i,n)=n**l
           G1(n+1)=EXP(E1(i,n))
           H1(n+1)=EXP(E1(n,i))
        ENDDO
     ENDDO
     X1(i)=EXP(A1(i))+EXP(B1(i))+EXP(E1(1,2))+k**l
     Y1(i)=EXP(B1(i))
     Z1(i)=EXP(A1(i))
  ENDDO

  k=2
  l=2
  B2=1
  G2=1
  H2=1
  E2=2
  DO i=1,10
     DO j=1,10
        A2(j)=i+1
        B2(j+2)=i+2
        C2(j)=EXP(A2(i))
        D2(j)=EXP(B2(i))

        DO n=1,10
           E2(i,n)=n**l
           G2(n+1)=EXP(E2(i,n))
           H2(n+1)=EXP(E2(n,i))
        ENDDO
     ENDDO
     X2(i)=EXP(A2(i))+EXP(B2(i))+EXP(E2(1,2))+k**l
     Y2(i)=EXP(B2(i))
     Z2(i)=EXP(A2(i))
  ENDDO

  DO i=1,10
     if (DABS(1-(C1(i)/C2(i))) > 0.00001) then
        print *,"NG",C1(i),C2(i)
     end if
     if (DABS(1-(D1(i)/D2(i))) > 0.00001) then
        print *,"NG",D1(i),D2(i)
     end if
     if (DABS(1-(X1(i)/X2(i))) > 0.00001) then
        print *,"NG",X1(i),X2(i)
     end if
     if (DABS(1-(Y1(i)/Y2(i))) > 0.00001) then
        print *,"NG",Y1(i),Y2(i)
     end if
     if (DABS(1-(Z1(i)/Z2(i))) > 0.00001) then
        print *,"NG",Z1(i),Z2(i)
     end if
  END DO

  DO i=1,11
     if (DABS(1-(G1(i)/G2(i))) > 0.00001) then
        print *,"NG",G1(i),G2(i)
     end if
     if (DABS(1-(H1(i)/H2(i))) > 0.00001) then
        print *,"NG",H1(i),H2(i)
     end if
  END DO
  print *,"OK"

END program
