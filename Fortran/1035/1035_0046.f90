  INTERFACE
    SUBROUTINE c( p)
    TYPE xd
      TYPE(x), POINTER, DIMENSION(:) :: pt
    END TYPE xd
    TYPE x
      TYPE(xd), POINTER :: pp
    END TYPE x
    TYPE(xd), POINTER :: p
   END SUBROUTINE c
  END INTERFACE
print *,'pass'
END 
