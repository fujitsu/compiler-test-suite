MODULE XH
type       L6
  INTEGER J
END type
TYPE (L6) TYPE1_x
END

MODULE OJ
USE XH,CC=>L6
TYPE (CC) TYPE1
END

USE XH
USE OJ
jk=0
TYPE1_x%J=2
DO  I=1,1
  TYPE1=TYPE1_x
  if (TYPE1%J/=2)jk=1
 END DO
if (jk/=0)write(6,*) "NG"
print *,'pass'
END 
