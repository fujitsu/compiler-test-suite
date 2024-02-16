MODULE module1
  IMPLICIT NONE
  integer,parameter :: num=8, ng=6
CONTAINS

  SUBROUTINE calc_sub(data_array,ng)
    integer::  ng
    REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
  END SUBROUTINE calc_sub

END MODULE module1

MODULE module2
  USE module1

  IMPLICIT NONE
  PRIVATE
CONTAINS
  SUBROUTINE out_sub()

    CALL write_sub(calc_sub,ng)

  END SUBROUTINE out_sub

  SUBROUTINE write_sub(func,ng)
    integer::  ng
    INTERFACE
      SUBROUTINE func(data_array,ng)
        integer,parameter :: num=8
        integer::ng
        REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
      END SUBROUTINE func
    END INTERFACE
  END SUBROUTINE write_sub
END MODULE module2

print *,'pass'
end
