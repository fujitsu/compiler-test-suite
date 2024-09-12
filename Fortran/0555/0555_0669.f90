PROGRAM main
TYPE first
 Integer :: i1=1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=3
END TYPE
 
TYPE(second)::obj
CLASS(*),ALLOCATABLE :: A

obj%i1=5
ALLOCATE(A,SOURCE=obj)
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,111

 TYPE IS(second)
 if(A%i1 .EQ. 5) then
   print*,'pass'
 else
   print*,112
 endif

 TYPE IS(third)
  PRINT*,113
END SELECT
 
END PROGRAM
