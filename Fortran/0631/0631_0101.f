      SUBROUTINE SUB01
      REAL A(20,20,20,20)/160000*0./
      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1,1)
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(20,20,20,20)/160000*0./
      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1,1)
      RETURN
      END

      SUBROUTINE SUB03
      REAL A(20,20,20,20)/160000*0./
      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1,1)
      RETURN
      END

      SUBROUTINE SUB04
      REAL A(20,20,20,20)/160000*0./
      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1,1)
      RETURN
      END

      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      END
