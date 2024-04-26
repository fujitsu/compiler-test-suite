      CALL SUB
      END

      SUBROUTINE SUB
      REAL(kind=4) :: RA
      REAL(kind=8) :: RB
      COMPLEX(kind=4) :: AA
      COMPLEX(kind=8) :: BB
      DATA RA    /10.0/
      DATA RB    /20.0/
      DATA AA%RE /2.0/
      DATA AA%IM /3.0/
      DATA BB%RE /4.0/
      DATA BB%IM /5.0/
      PRINT *, RA
      PRINT *, RB
      PRINT *, AA
      PRINT *, BB
      END
