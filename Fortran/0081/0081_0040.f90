module module0
  integer,parameter ::  num=8,ng=6
end

MODULE module1
 USE module0 
  IMPLICIT NONE
CONTAINS

  SUBROUTINE calc_sub(data_array,ng)
    integer::ng
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

    CALL write_sub(calc_sub,ng)

  END SUBROUTINE out_sub

  SUBROUTINE write_sub(func,ng)
    integer::ng
    INTERFACE
      SUBROUTINE func(data_array,ng)
        USE module0 ,only:num
        integer::ng
        REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
      END SUBROUTINE func
    END INTERFACE
        REAL(8), DIMENSION(2,3) :: data
  call func(data,ng)
  if (any(data/=1)) print *,101
  END SUBROUTINE write_sub
END MODULE module2

use module2
call out_sub
print *,'pass'
end
