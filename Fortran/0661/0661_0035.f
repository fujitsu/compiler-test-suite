      PROGRAM MAIN
       INTEGER*4          A,B
        A=10
        I=10
        K=10
        CALL SUB1(J)
        CALL SUB2(B)
        CALL SUB3(L)
        IF(A.NE.B) THEN
          WRITE(6,*) 'NG'
          STOP
        ELSEIF(I.NE.J) THEN
          WRITE(6,*) 'NG'
          STOP
        ELSEIF(K.NE.L) THEN
          WRITE(6,*) 'NG'
          STOP
        ENDIF
        WRITE(6,*) '*****PASS*****'
      STOP
      end
      SUBROUTINE SUB1(J)
       INTEGER*4    I,J
        DO 10 I=1,10
          J=I
   10   CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(J)
       INTEGER*4    I
       INTEGER*4    J
        DO 20 I=1,10
          J=I
   20   CONTINUE
      RETURN
      END
      SUBROUTINE SUB3(J)
       INTEGER*4    I,J
        DO 30 I=1,10
          J=I
   30   CONTINUE
      RETURN
      END
