      INTEGER A,B
      DATA A/1/,B/2/
C
      PRINT *,'test'
      CALL SUB(*10,*20)
   10 WRITE(6,*) A,B
   20 STOP
      END
      SUBROUTINE SUB(*,*)
      RETURN 2
      END
