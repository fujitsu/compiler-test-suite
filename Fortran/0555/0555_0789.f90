PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
 
CLASS(*),POINTER :: A(:)
TYPE(second),TARGET :: tgt2(3)
TYPE(third),TARGET :: tgt3(3)

tgt2%i1=2
tgt2(3)%i1=8
tgt3%i1=3
tgt3(3)%i1=7
A=>tgt2
 
SELECT TYPE(A)
 TYPE IS(first)
  print*,101
 TYPE IS(second)
  num1 = A(3)%i1+A(1)%i1
 TYPE IS(third)
  print*,102
END SELECT

A=>tgt3

SELECT TYPE(A)
 TYPE IS(first)
  print*,103
 TYPE IS(second)
  print*,104
 TYPE IS(third)
  num2 = A(3)%i1+A(1)%i1
END SELECT

if(num1 + num2 /=20) then 
 print*,105
else
 print*,'pass'
endif
END PROGRAM
