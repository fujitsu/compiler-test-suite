MODULE module1
  IMPLICIT NONE
  integer,parameter :: num=8, ng=6
    REAL(num), DIMENSION(2,3) :: data
    REAL(num), DIMENSION(2,3) :: x_data=reshape([1,2,3,4,5,6],[2,3])
CONTAINS

  SUBROUTINE calc_sub(data_array)
    REAL(num), DIMENSION(1-ng:,1-ng:), INTENT(OUT) :: data_array
    if (any(lbound(data_array)/=[-5,-5])) print *,301
    data_array= x_data
  END SUBROUTINE calc_sub

END MODULE module1

MODULE module2
  USE module1

  IMPLICIT NONE
  PRIVATE
  public::out_sub
CONTAINS
  SUBROUTINE out_sub()

    CALL write_sub(calc_sub)
    CALL calc_sub(data)
   
    if (any(data/=x_data)) print *,201

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
  if (any(data/=x_data)) print *,101
  END SUBROUTINE write_sub
END MODULE module2

use module2
call out_sub
print *,'pass'
end
