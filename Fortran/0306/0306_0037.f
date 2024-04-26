      CALL       ZG11
      END
      SUBROUTINE ZG11
      COMPLEX A(100)
      COMPLEX RES
      RES = 99.
      CALL SUB5(A,100)
      IF (A(5) .eq. RES) THEN
         PRINT *, "OK"
      ELSE
         PRINT *, "NG"
      ENDIF
      END
      SUBROUTINE SUB5(A,N)
      COMPLEX A(N)

      DO 20 I=1,99
      DO 20 J=1,99
        A(5)=I
 20      CONTINUE
      END
