MODULE XH
type       L6
  INTEGER J(1)
END type
END

MODULE OJ
USE XH,CC=>L6
TYPE (CC) TYPE1
END

USE XH
USE OJ
integer,parameter::x(1)=1
jk=0
DO  I=1,1
  TYPE1=L6( x )
  if (TYPE1%J(1)/=1)jk=1
 END DO
if (jk/=0)write(6,*) "NG"
print *,'pass'
END 
