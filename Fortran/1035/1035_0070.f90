MODULE mod_ly
  REAL :: ly
END MODULE mod_ly
MODULE mod_var
  REAL, DIMENSION(:), ALLOCATABLE :: var1
  REAL :: var2(1) = 0.0
END MODULE  mod_var
    USE mod_ly
    USE mod_var
    ly=1.0
    write(45,*)'ly =',ly
    if (abs(ly-1.0)>0.0001)print *,'error'
print *,'pass'
END
