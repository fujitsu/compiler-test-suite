module module0
  integer ,parameter::  num=8,n=6
  integer ,parameter::  k=3
end

MODULE module1
 USE module0 
  IMPLICIT NONE
  type t(p1)
    integer,kind:: p1
    character(p1) :: data_array
  end type
CONTAINS

  SUBROUTINE calc_sub(d)
 USE module0 
    type (t(num)), INTENT(OUT) :: d(k)
    d%data_array='1.'
    if (len(d%data_array)/=num) print *,601
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
      SUBROUTINE func(d)
        USE module1 
        type (t(num)), INTENT(OUT) :: d(k)
      END SUBROUTINE func
    END INTERFACE
    type (t(num)) :: d(3)
  call func(d)
  if (any(d%data_array/='1.')) print *,101
  END SUBROUTINE write_sub
END MODULE module2

use module2
call out_sub
print *,'pass'
end
