PROGRAM main
IMPLICIT NONE

INTEGER::sh(3)=0,sz=0,so=0

ASSOCIATE(aa => reshape(['abc','pqr','stu','xyz','def','ghi','abc','pqr','stu','xyz','def','ghi'],[2,3,2])//&
               &reshape(['abc','pqr','stu','xyz','def','ghi','abc','pqr','stu','xyz','def','ghi'],[2,3,2]))
so=sizeof(aa)
sz=size(aa)
sh=shape(aa)
if(so/=72 .or. sz/=12 .or. sh(1)/=2 .or. sh(2)/=3 .or. sh(3)/=2) print*,'100',so,sz
  CALL sub_2(aa,sh)
END ASSOCIATE

CONTAINS
SUBROUTINE sub_2(ddy,dsh)
integer::dsh(:)
character(len=*)::ddy(dsh(1),dsh(2),dsh(3))
associate(aa=>ddy)
if(so/=sizeof(aa(:,:,:)) .or. sz/=size(aa) .or. all(shape(aa(:,:,:))/=dsh) ) print*,'101'
IF(aa(1,1,1) .EQ. 'abcabc') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
