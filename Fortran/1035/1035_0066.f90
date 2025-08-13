MODULE mod_ly
  REAL :: ly
END MODULE mod_ly
MODULE mod_var
  REAL, DIMENSION(:), ALLOCATABLE :: var1
  REAL :: var2(1)
END MODULE  mod_var
MODULE mod_sub
CONTAINS
  SUBROUTINE sub
    USE mod_var
    USE mod_ly
    write(41,*)'ly =',ly
    if (abs(ly-1.0)>0.0001)print *,'error'
  END SUBROUTINE sub
END MODULE mod_sub
PROGRAM MAIN
  USE mod_ly
  USE mod_sub
  ly=1.0
  CALL sub
print *,'pass'
END PROGRAM MAIN
