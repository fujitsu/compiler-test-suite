MODULE g1128_a

  IMPLICIT NONE

  TYPE dbcsr_mem
     integer, POINTER :: pool => Null()
     REAL(KIND=8)                     :: oversize_factor = 1.0
  END TYPE

  TYPE dbcsr_data_obj
     TYPE(dbcsr_data_area_type), POINTER           :: d
  END TYPE dbcsr_data_obj

  TYPE(dbcsr_mem), PARAMETER :: dbc = dbcsr_mem(Null(),1.0_8)

  TYPE dbcsr_data_area_type
     TYPE(dbcsr_mem)   :: mem = dbc
  END TYPE dbcsr_data_area_type
END MODULE
MODULE g1128
  USE g1128_a
END MODULE 
print *,'pass'
end
