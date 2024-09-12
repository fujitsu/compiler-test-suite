      PROGRAM MAIN
      CALL SUB01
      CALL SUB02
      CALL SUB03
      END

      SUBROUTINE SUB01
      REAL A(100,100)/10000*0/
      DO 10 J=2,9
      DO 10 I=2,10
       A(I-1,J)=A(I,J)+1
   10 CONTINUE
      WRITE(6,*) A(1,1)
      RETURN
      END

      SUBROUTINE SUB02
      REAL A(100,100)/10000*0/
      DO 10 J=2,9
      DO 10 I=1,10
       A(I,J)=A(I,J)+1
   10 CONTINUE
      WRITE(6,*) A(1,1)
      RETURN
      END

      SUBROUTINE SUB03
      REAL A(100,100)/10000*0/
      DO 10 J=2,9
      DO 10 I=1,10
       A(I,J)=A(I,J)+1
   10 CONTINUE
      WRITE(6,*) A(1,1)
      RETURN
      END

      SUBROUTINE SUB04
      REAL A(100,100)
      DO 10 J=2,9
       A(1,J)=A(1,J)+1
      DO 10 I=1,10
       A(I,J)=A(I,J)+1
   10 CONTINUE
      WRITE(6,*) A(1,1)
      RETURN
      END
