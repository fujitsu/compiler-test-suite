MODULE mod_ly
  REAL :: ly
END MODULE mod_ly
MODULE mod_var
  REAL, DIMENSION(:), ALLOCATABLE :: var1
  REAL :: var2(1) = 0.0
END MODULE  mod_var
MODULE mod_sub
CONTAINS
  SUBROUTINE sub
    USE mod_var
    USE mod_ly
    if(ly == 1.0)PRINT *,'pass'
  END SUBROUTINE sub
END MODULE mod_sub
PROGRAM test
  USE mod_ly
  USE mod_sub
  ly=1.0
  CALL sub
END PROGRAM test
