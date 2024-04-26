      COMPLEX A(20),B(20),T(20)
      DATA A,B/20*(2.0,-1.0),20*(-2.0,1.0)/
      INTEGER I
      COMMON T

      TT = 1
      DO 10 I=1,10
         T(i)=A(I+2)*B(I+1)
         CALL SUB(i)
         A(I)=conjg(T(i))*A(I)
   10 CONTINUE

      WRITE (6,*) ']]]]]] program ]]]]]]'
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END

      SUBROUTINE SUB(nn)
      COMPLEX T(20),TT
      COMMON T,TT
      T(nn)=-T(nn)
      RETURN
      END
