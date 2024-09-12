         SUBROUTINE TSCR5(B)
         REAL*4  B(8,8)
         DO 500 J=1,8
            DO 500 I=1,8
               B(I,J)=3.0
500      CONTINUE
         RETURN
         END

         REAL*4 BB(64)
         CALL TSCR5(BB)
         WRITE(6,*) BB
         END
