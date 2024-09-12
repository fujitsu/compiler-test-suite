      CALL       ZG01
      CALL       ZG02
      CALL       ZG03
      CALL       ZG04
      CALL       ZG05
      CALL       ZG06
      CALL       ZG07
      CALL       ZG08
      CALL       ZG09
      CALL       ZG10
      CALL       ZG11
      CALL       ZG12
      END
      SUBROUTINE ZG01
      REAL A(100)
      DO 20 I=1,99
        A(5)=I
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG02
      REAL A(100)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG03
      REAL A(100)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=I
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG04
      REAL A(100)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=J
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG05
      REAL A(100)
      N=100
      CALL SUB1(A,100)
      END
      SUBROUTINE SUB1(A,N)
      REAL A(N)
      DO 20 I=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG06
      REAL A(100)
      N=100
      CALL SUB2(A,100)
      END
      SUBROUTINE SUB2(A,N)
      REAL A(N)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG07
      REAL A(100)
      N=100
      CALL SUB3(A,100)
      END
      SUBROUTINE SUB3(A,N)
      REAL A(N)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=I
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG08
      REAL A(100)
      N=100
      CALL SUB4(A,100)
      END
      SUBROUTINE SUB4(A,N)
      REAL A(N)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=J
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG09
      COMPLEX A(100)
      DO 20 I=1,99
        A(5)=I
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG10
      COMPLEX A(100)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG11
      COMPLEX A(100)
      N=100
      CALL SUB5(A,100)
      END
      SUBROUTINE SUB5(A,N)
      COMPLEX A(N)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=I
   20 CONTINUE
      WRITE(6,*) A(5)
      END
      SUBROUTINE ZG12
      COMPLEX A(100)
      N=100
      CALL SUB6(A,100)
      END
      SUBROUTINE SUB6(A,N)
      COMPLEX A(N)
      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=J
   20 CONTINUE
      WRITE(6,*) A(5)
      END
