      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      END

      SUBROUTINE SUB01
      REAL A(10,10,20,10),B(10,10),C(10),D(10)
      DATA A/20000*.0/,B/100*0./,C/10*0./,D/10*0./

      DO 10 L=1,10
       D(L)=D(L)+5.
      DO 10 K=1,20
       D(L)=D(L)+7.
      DO 10 J=1,10
       B(J,L)=B(J,L)+1.
      DO 20 I=1,10
       A(I,J,K,L)=A(I,J,K,L)+2.
   20 CONTINUE
       C(L)=C(L)+3.
   10 CONTINUE

      WRITE(6,*) A(1,1,1,1),B(1,1),C(1),D(1)
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(10,10,20,10),B(10,10),C(10),D(10)
      DATA A/20000*.0/,B/100*0./,C/10*0./,D/10*0./

      DO 10 L=1,10
       D(L)=L
      DO 10 K=1,20
       D(L)=7.
      DO 10 J=1,10
       B(J,L)=1.
      DO 20 I=1,10
       A(I,J,K,L)=2.
   20 CONTINUE
       C(L)=L+3.
   10 CONTINUE

      WRITE(6,*) A(1,1,1,1),B(1,1),C(1),D(1)
      RETURN
      END
