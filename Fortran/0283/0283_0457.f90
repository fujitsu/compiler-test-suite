PROGRAM main
IMPLICIT NONE

INTEGER::sh(3)=0,sz=0,so=0

ASSOCIATE(aa => reshape(['abc','pqr','stu','xyz','def','ghi','abc','pqr','stu','xyz','def','ghi'],[2,3,2])//&
               &reshape(['abc','pqr','stu','xyz','def','ghi','abc','pqr','stu','xyz','def','ghi'],[2,3,2]))
so=sizeof(aa)
sz=size(aa)
sh=shape(aa)
if(so/=72 .or. sz/=12 .or. sh(1)/=2 .or. sh(2)/=3 .or. sh(3)/=2) print*,'100',so,sz
  CALL sub_2(aa)
END ASSOCIATE

CONTAINS
SUBROUTINE sub_2(ddy)
character(len=6)::ddy(2,2,*)
associate(aa=>ddy(:,:,1))
if(24/=sizeof(aa) .or. 4/=size(aa) .or. all(shape(aa)/=2) ) print*,'101'
IF(ddy(1,1,1) .EQ. 'abcabc') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
