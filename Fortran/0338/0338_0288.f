      character*8 A/'12345678'/
      CALL SUB(A)
      WRITE(6,*) A
      STOP
      END

      SUBROUTINE SUB(B)
      CHARACTER*(*) B
      WRITE(6,*) B
      RETURN
      END
