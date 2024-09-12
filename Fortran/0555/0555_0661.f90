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
 
CLASS(first),POINTER :: A
TYPE(second),TARGET :: tgt2
TYPE(third),TARGET :: tgt3

tgt2%i1=2
tgt2%i2=5
tgt3%i1=12
tgt3%i2=15
tgt3%i3=17
A=>tgt2
 
SELECT TYPE(A)
 TYPE IS(first)
  num1=0
  print*,A%i1,'first'
 TYPE IS(second)
  num1 = A%i1+A%i2
 TYPE IS(third)
  num1 = A%i1+A%i2+A%i3
END SELECT

A=>tgt3

SELECT TYPE(A)
 TYPE IS(first)
  num2=0
  print*,A%i1,'first'
 TYPE IS(second)
  num2 = A%i1+A%i2
 TYPE IS(third)
  num2 = A%i1+A%i2+A%i3
END SELECT

if(num1 == 0 .or. num2 == 0) print*,101
if(num1 == 14) print*,102
if(num2 /= 44) print*,103
if(num1 /= num2) print*,'pass'
END PROGRAM
