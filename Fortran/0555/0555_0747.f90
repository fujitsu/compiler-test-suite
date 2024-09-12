PROGRAM main
TYPE first
 Integer :: i1=5
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
 
CLASS(first),POINTER :: A(:)
TYPE(second),TARGET :: tgt2(4)
TYPE(third),TARGET :: tgt3(5)
INTEGER::num1,num2

tgt2%i2=2
tgt2(3)%i2=5
tgt3%i3=8
tgt3(5)%i3=10
A=>tgt2
 
SELECT TYPE(A)
 TYPE IS(first)
  print*,101
 TYPE IS(second)
  num1 = A(1)%i1+A(3)%i2
 TYPE IS(third)
  num1 = 102
END SELECT

A=>tgt3

SELECT TYPE(A)
 TYPE IS(first)
  print*,103
 TYPE IS(second)
  print*,104
 TYPE IS(third)
  num2 = A(1)%i1+A(5)%i3
END SELECT

if(num1 == 10 .and. num2 == 15) then
  print*,'pass'
else
  print*,105
endif
END PROGRAM
