PROGRAM main
TYPE first
 Integer :: i1=0
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2=0
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3=0
END TYPE
 
CLASS(first),ALLOCATABLE :: A(:,:,:,:,:,:,:)
ALLOCATE(second::A(2,4,3,2,2,2,2))

A%i1=2
A(2,1,3,1,1,1,1)%i1=8
 
SELECT TYPE(A)
 TYPE IS(first)
   print*,211
 TYPE IS(second)
  if(A(2,1,3,1,1,1,1)%i1 /=8) then 
    print*,212,A(2,1,3,1,1,1,1)%i1
  else 
    print*,'pass'
  endif
 TYPE IS(third)
   print*,213
END SELECT
 
END PROGRAM
