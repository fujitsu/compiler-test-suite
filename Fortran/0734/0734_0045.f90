  TYPE VARYING_STRING
    CHARACTER,DIMENSION(:),POINTER :: chars
  ENDTYPE VARYING_STRING
  print *,'pass'
  CONTAINS
    subroutine    s()
      type(VARYING_STRING) :: string_a
      INTEGER                         :: la
      print *, (string_a%chars == string_a%chars(1:la)) 
    END subroutine
END
