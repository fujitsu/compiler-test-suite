PROGRAM main
IMPLICIT NONE

INTEGER::sh(2)=0,sz=0,so=0

ASSOCIATE(aa => reshape(['abc','pqr','stu','xyz','def','ghi'],[2,3]))
so=sizeof(aa)
sz=size(aa)
sh=shape(aa)
if(so/=18 .or. sz/=6 .or. sh(1)/=2 .or. sh(2)/=3) print*,'100',so,sz
  CALL sub_2(aa,so,sz,sh)
END ASSOCIATE

CONTAINS
SUBROUTINE sub_2(ddy,dso,dsz,dsh)
INTEGER :: dso,dsh(:),dsz
character(len=3)::ddy(:,:)
associate(aa=>ddy)
if(dso/=sizeof(aa) .or. dsz/=size(aa) .or. all(shape(aa)/=dsh) ) print*,'101'
IF(aa(1,1) .EQ. 'abc') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
