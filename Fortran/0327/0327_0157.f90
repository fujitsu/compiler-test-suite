 MODULE test

  TYPE a
    INTEGER i
  END TYPE a
  TYPE a_ptr
    TYPE(a), POINTER :: p
  END TYPE a_ptr

 CONTAINS

 SUBROUTINE sub(a,b)
  TYPE(a_ptr) a,b
  a=b
 END SUBROUTINE sub

 END MODULE test

 USE test

 TYPE(a_ptr) x

 ALLOCATE(x%p)
 x%p%i = 5
 CALL SUB(x,x)
 print *,'pass'
 END
