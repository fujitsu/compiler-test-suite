PROGRAM main
TYPE first
 Integer :: i1=10
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=20
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=30
END TYPE
 
TYPE(second)::obj(5)
CLASS(*),ALLOCATABLE :: A(:)

obj(3)%i1=40
obj(3)%i2=50
ALLOCATE(A,SOURCE=obj)
SELECT TYPE(A)
 TYPE IS(first)
  PRINT*,111

 TYPE IS(second)
 if(A(2)%i1 == 10 .and. A(1)%i2 == 20 .and.A(3)%i1 == 40 .and.A(3)%i2 == 50) then
   print*,'pass'
 else
   print*,112
 endif

 TYPE IS(third)
  PRINT*,113
END SELECT
 
END PROGRAM
