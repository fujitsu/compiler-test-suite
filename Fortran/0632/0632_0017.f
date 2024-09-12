      SUBROUTINE SUB01
      COMMON A
      REAL A(10,10,10,10,10)
      DO 10 M=1,10

      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+1.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB02
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10

      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+2.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB03
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10

      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+3.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB04
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+5.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB05
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10

      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+7.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB06(N)
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,N
      DO 10 L=1,6
      DO 10 K=1,4
      DO 10 J=1,N
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/3.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB07
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/5.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB08
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)/7.
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB09
      COMMON A
      REAL A(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)-.3
   10 CONTINUE
      WRITE(6,*) (A(N,1,1,1,1),N=1,10)
      RETURN
      END

      SUBROUTINE SUB10(N,B,C)
      COMMON A
      REAL A(10,10,10,10,10)
      REAL B(10,10,10,10,10)
      REAL C(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(N,N,N,N,N)=N
       A(N,N,N,N,N)=A(N,N,N,N,N)-.5
       B(I,J,K,L,1)=B(I,J,K,L,10)/3.
       C(I,J,K,L,M)=C(I,J,K,L,M)/7.
   10 CONTINUE
      WRITE(6,*) (A(N,10,10,10,10),N=1,10)
      WRITE(6,*) (B(N,10,10,10,1) ,N=1,10)
      WRITE(6,*) (C(N,1,1,1,1)    ,N=1,10)
      RETURN
      END

      SUBROUTINE SUB11(N,B,C)
      COMMON A
      REAL A(10,10,10,10,10)
      REAL B(10,10,10,10,10)
      REAL C(10,10,10,10,10)

      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(N,N,N,N,N)=N
       A(N,N,N,N,N)=A(N,N,N,N,N)-.7
       B(I,J,K,L,1)=B(I,J,K,L,10)+.3
       C(I,J,K,L,M)=C(I,J,K,L,M)+.7
   10 CONTINUE
      WRITE(6,*) (A(N,10,10,10,10),N=1,10)
      WRITE(6,*) (B(N,10,10,10,1) ,N=1,10)
      WRITE(6,*) (C(N,1,1,1,1)    ,N=1,10)
      RETURN
      END

      PROGRAM MAIN
      COMMON A
      REAL A(100000)
      REAL B(100000)
      REAL C(100000)
      DO 10 I=1,100000
       A(I)=I**(1./4.)
       B(I)=I**(1./3.)
       C(I)=I**(1./2.)
   10 CONTINUE
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      idn=10
      CALL SUB06(idn)
      CALL SUB07
      CALL SUB08
      CALL SUB09
      idn=10
      CALL SUB10(idn,B,C)
      idn=10
      CALL SUB11(idn,B,C)
      WRITE(6,*) '(A)'
      WRITE(6,*) (A(I),I=1,100000,990)
      WRITE(6,*) '(B)'
      WRITE(6,*) (B(I),I=1,100000,990)
      WRITE(6,*) '(C)'
      WRITE(6,*) (C(I),I=1,100000,990)
      END
