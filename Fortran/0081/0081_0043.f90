module module0
  integer,parameter ::  num=8,n=6
  integer ::  k=2
end

MODULE module1
 USE module0 
  IMPLICIT NONE
CONTAINS

  SUBROUTINE calc_sub(data_array1,data_array2)
    REAL(num), DIMENSION(-n+k:,-n+k:), INTENT(OUT) :: data_array1
    REAL(num), DIMENSION(-n+k:,-n+k:), INTENT(OUT) :: data_array2
    data_array1=1.
    data_array2=1.
    if (any(lbound(data_array1)/=-4)) print *,701
    if (any(lbound(data_array2)/=-4)) print *,702
    if (any(ubound(data_array1)/=-4+1)) print *,711
    if (any(ubound(data_array2)/=-4+1)) print *,712
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
      SUBROUTINE func(data_array1,data_array2)
        USE module0 
        REAL(num), DIMENSION(-n+k:,-n+k:), INTENT(OUT) :: data_array1
        REAL(num), DIMENSION(-n+k:,-n+k:), INTENT(OUT) :: data_array2
      END SUBROUTINE func
    END INTERFACE
        REAL(8), DIMENSION(2,2) :: data1
        REAL(8), DIMENSION(2,2) :: data2
  call func(data1,data2)
  if (any(data1/=1)) print *,101
  if (any(data2/=1)) print *,102
  END SUBROUTINE write_sub
END MODULE module2

use module2
call out_sub
print *,'pass'
end
