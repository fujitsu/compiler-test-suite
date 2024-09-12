PROGRAM main
 TYPE IS
  Integer :: i1
 END TYPE
 TYPE,EXTENDS(IS) :: IS1
  Integer :: i2
 END TYPE
 
 CLASS(*),ALLOCATABLE :: A
 allocate(IS::A)
 
SELECT TYPE(A)
  TYPE IS (IS)
         A%i1=2
         PRINT*,"PASS"
  TYPE IS (IS1)
         A%i1=2
         A%i2=3
         PRINT*,"FAIL"
  class default
         PRINT*,"FAIL"
 end select
 END PROGRAM
