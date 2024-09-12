      SUBROUTINE SUB01
      REAL A(20,20,20)/8000*1./

      DO 10 K=1,19
      DO 10 J=1,19
      DO 10 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)

      RETURN
      END

      SUBROUTINE SUB02
      REAL A(20,20,20)/8000*1./

      DO 20 K=1,19
       IF(K.EQ.10) GOTO 30
      DO 10 J=1,19
      DO 10 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   10 CONTINUE
   20 CONTINUE
   30 WRITE(6,*) A(1,1,1)

      RETURN
      END

      SUBROUTINE SUB03
      REAL A(20,20,20)/8000*1./

       N=1
      DO 20 K=1,19,N
       N=1
      DO 10 J=1,19
      DO 10 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   10 CONTINUE
   20 CONTINUE
      WRITE(6,*) A(1,1,1)

      DO 21 K=1,19
       N=1
      DO 11 J=1,19
      DO 11 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   11 CONTINUE
   21 CONTINUE
      WRITE(6,*) A(1,1,1),N

      RETURN
      END

      SUBROUTINE SUB04
      REAL A(20,20,20)/8000*1./

      K=1
   20 CONTINUE
      DO 10 J=1,19
      DO 10 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   10 CONTINUE
      K=K+1
      IF(K.LE.19) GOTO 20
      WRITE(6,*) A(1,1,1)

      RETURN
      END

      SUBROUTINE SUB05
      REAL A(20,20,20)/8000*1./

      DO 20 K=1,19
       IF(K.EQ.10) GOTO 20
      DO 10 J=1,19
      DO 10 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   10 CONTINUE
   20 CONTINUE
      WRITE(6,*) A(1,1,1)

      K=1
      DO 11 J=1,19
      DO 11 I=1,19
       A(I,J,K)=A(I,J,K)+2.
   11 CONTINUE
      WRITE(6,*) A(1,1,1)

      RETURN
      END

      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      END
