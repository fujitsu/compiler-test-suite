MODULE module1
CONTAINS

  SUBROUTINE calc_sub(data_array)
  integer,parameter ::  ng=6
    REAL(8), DIMENSION(ng) :: data_array
  END SUBROUTINE calc_sub

END MODULE module1

  USE module1


INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
      SUBROUTINE func(data_array)
  integer,parameter ::  ng=6
        REAL(8), DIMENSION(ng ) :: data_array
      END SUBROUTINE func
    END INTERFACE
  END SUBROUTINE 
 END INTERFACE

    CALL write_sub(calc_sub)


print *,'pass'
end
  SUBROUTINE write_sub(func)
    INTERFACE
      SUBROUTINE func(data_array)
  integer,parameter ::  ng=6
        REAL(8), DIMENSION(ng ) :: data_array
      END SUBROUTINE func
    END INTERFACE
  END SUBROUTINE 
