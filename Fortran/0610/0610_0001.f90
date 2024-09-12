PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE

SELECT TYPE(A=>Afun())
 TYPE IS(second)

  if(A%i1/=2) then
    print*,212
  else 
    print*,'pass'
  endif
END SELECT

CONTAINS

FUNCTION Afun()
CLASS(first),allocatable :: Afun
ALLOCATE(second::Afun)
Afun%i1=2
END FUNCTION
 
END PROGRAM
