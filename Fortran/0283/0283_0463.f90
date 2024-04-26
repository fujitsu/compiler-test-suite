PROGRAM main
IMPLICIT NONE

INTEGER::so=0
character(len=4)::st1='abcd',st2='wxyz'

ASSOCIATE(aa => st1//st2)
so=sizeof(aa)
if(so/=8) print*,'100',so
  CALL sub_2(aa,so)
END ASSOCIATE

CONTAINS
SUBROUTINE sub_2(ddy,dso)
INTEGER :: dso
character(len=*)::ddy
associate(aa=>ddy)
if(dso/=sizeof(aa)) print*,'101'
IF(aa .EQ. 'abcdwxyz') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
END SUBROUTINE

END PROGRAM
