MODULE mod_ly
  IMPLICIT NONE
  PRIVATE
  PUBLIC :: ly, init_ly
  REAL, SAVE :: ly
CONTAINS
  SUBROUTINE init_ly
    ly = 1.0
  END SUBROUTINE init_ly
END MODULE mod_ly
MODULE mod_var
  IMPLICIT NONE
  PRIVATE
  PUBLIC :: var1, var2
  REAL, DIMENSION(:), ALLOCATABLE, SAVE :: var1
  REAL, SAVE :: var2(1) = 0.0
END MODULE  mod_var
MODULE mod_sub
  IMPLICIT NONE
  PRIVATE
  PUBLIC :: sub
CONTAINS
  SUBROUTINE sub
    USE mod_var, ONLY : var1
    USE mod_ly, ONLY : ly
    write(36,*)'ly =',ly
    if (abs(ly-1.0)>0.0001)print *,'error'
  END SUBROUTINE sub
END MODULE mod_sub
PROGRAM MAIN
  USE mod_ly,  ONLY : init_ly
  USE mod_sub, ONLY : sub
  CALL init_ly
  CALL sub
print *,'pass'
END PROGRAM MAIN
