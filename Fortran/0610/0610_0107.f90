PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
CLASS(first),ALLOCATABLE :: A
ALLOCATE(second::A)

A%i1=2
 
SELECT TYPE(ASC=>A)
 TYPE IS(second)
  ASC%i1=3
  ASC%i2=5
  if(ASC%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
 
END PROGRAM
