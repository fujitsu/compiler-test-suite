  TYPE VARYING_STRING
    CHARACTER,DIMENSION(:),POINTER :: chars
  ENDTYPE VARYING_STRING
 logical,dimension(10)::x
 call s(x)
print *,'pass'
  CONTAINS
    subroutine    s(x)
      type(VARYING_STRING) :: string_a
 logical,dimension(:)::x
      INTEGER                         :: la=10
allocate(string_a%chars(1:10))
string_a%chars='1'
      write(21,*)string_a%chars == string_a%chars(1:la)
      if (any( string_a%chars /= string_a%chars(1:la)))print *,'error-1'
      call sub(string_a%chars == string_a%chars(1:la))
      x=string_a%chars == string_a%chars(1:la)
 if (any(.not.x))print *,'error-3'
    END subroutine
    subroutine sub(x)
 logical,dimension(:)::x
 if (any(.not.x))print *,'error-2'
 end subroutine
END
