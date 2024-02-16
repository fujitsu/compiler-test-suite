module module0
  integer,parameter ::  ng=6
end

MODULE module1
 USE module0
  IMPLICIT NONE
  integer,parameter :: num=8
CONTAINS

  SUBROUTINE calc_sub(data_array)
    USE module0
    REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
    data_array=1.
  END SUBROUTINE calc_sub

END MODULE module1

MODULE module2
  USE module1

  IMPLICIT NONE
  public:: out_sub
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
        REAL(8), DIMENSION(2,3) :: data
  call func(data)
  if (any(data/=1)) print *,101
  END SUBROUTINE write_sub
END MODULE module2

use module2
call out_sub
print *,'pass'
end
