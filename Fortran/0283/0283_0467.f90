PROGRAM main
IMPLICIT NONE

INTEGER::sh(1)=0,sz=0,so=0

ASSOCIATE(aa => ['abc','pqr','stu','xyz','def','ghi'])
so=sizeof(aa)
sz=size(aa)
sh=shape(aa)
if(so/=18 .or. sz/=6 .or. sh(1)/=6) print*,'100',so,sz
  CALL sub_2(aa,so,sz,sh,3)
END ASSOCIATE

CONTAINS
SUBROUTINE sub_2(ddy,dso,dsz,dsh,n)
INTEGER :: dso,dsh(:),dsz,n
character(len=n)::ddy(6)
associate(aa=>ddy)
if(dso/=sizeof(aa) .or. dsz/=size(aa) .or. all(shape(aa)/=dsh) ) print*,'101'
IF(ddy(5) .EQ. 'def') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
