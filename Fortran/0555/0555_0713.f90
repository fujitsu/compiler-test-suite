PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(first),ALLOCATABLE :: A(:)
ALLOCATE(second::A(10))

A%i1=2
A(2)%i1=4
 
SELECT TYPE(A)
 TYPE IS(second)
  if(A(2)%i1 /=4) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
