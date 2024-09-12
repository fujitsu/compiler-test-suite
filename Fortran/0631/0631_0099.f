      SUBROUTINE SUB01
      REAL A(20,20,20)/8000*0./
      REAL B(20)/20*0./
      DO 10 J=1,20
       S=B(J)
      DO 10 I=1,20
      DO 10 K=1,20
       A(I,J,K)=A(I,J,K)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      WRITE(6,*) S
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(20,20,20)/8000*0./
      REAL B(20)/20*0./
      DO 10 J=1,20
       B(J)=1.
      DO 10 I=1,20
      DO 10 K=1,20
       A(I,J,K)=A(I,J,K)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      WRITE(6,*) B(1)
      RETURN
      END

      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      END
