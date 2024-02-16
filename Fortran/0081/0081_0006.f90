MODULE module2

  IMPLICIT NONE
  PRIVATE
CONTAINS
  SUBROUTINE calc_sub(data_array)
  integer,parameter :: num=8, ng=6
    REAL(8), DIMENSION(ng), INTENT(OUT) :: data_array
  END SUBROUTINE calc_sub
  SUBROUTINE out_sub()

    CALL write_sub(calc_sub)

  END SUBROUTINE out_sub

  SUBROUTINE write_sub(func)
    INTERFACE
      SUBROUTINE func(data_array)
        integer,parameter :: num=8,ng=6
        REAL(8), DIMENSION(ng), INTENT(OUT) :: data_array
      END SUBROUTINE func
    END INTERFACE
  END SUBROUTINE write_sub
END MODULE module2

print *,'pass'
end
