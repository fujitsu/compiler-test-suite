MODULE module0
  IMPLICIT NONE
  integer,parameter :: num=8, ng=6
END MODULE module0

MODULE module1
  USE module0
  IMPLICIT NONE
CONTAINS

  SUBROUTINE calc_sub(data_array)
    USE module0
    REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
  END SUBROUTINE calc_sub

END MODULE module1

MODULE module2
  USE module1

  IMPLICIT NONE
  PRIVATE
CONTAINS
  SUBROUTINE out_sub()

    CALL write_sub(calc_sub)

  END SUBROUTINE out_sub

  SUBROUTINE write_sub(func)
    INTERFACE
      SUBROUTINE func(data_array)
        integer,parameter :: num=8,ng=6
        REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
      END SUBROUTINE func
    END INTERFACE
  END SUBROUTINE write_sub
END MODULE module2

print *,'pass'
end
