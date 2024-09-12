      SUBROUTINE SUB01
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB03
      REAL A(10,10,10)/1000*0./
      DO 10 J=1,10
      DO 10 K=1,10
      DO 10 I=1,10
       A(I,J,K)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB04
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB05
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB06
      REAL A(10,10,10)/1000*0./
      X=1.
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+X
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB07
      REAL A(10,10,10)/1000*0./
      DO 10 K=2,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K-1)+3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      CALL SUB03
      CALL SUB04
      CALL SUB05
      CALL SUB06
      CALL SUB07
      END
