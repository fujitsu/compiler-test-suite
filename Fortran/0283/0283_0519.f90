MODULE mod1

IMPLICIT NONE 

TYPE t1
  INTEGER :: x,y
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2,3)
END TYPE

TYPE t3
  TYPE(t2) :: tt_2
END TYPE

INTERFACE OPERATOR (.plus.)
  MODULE PROCEDURE addition_var
END INTERFACE

INTERFACE OPERATOR (.minus.)
  MODULE PROCEDURE sub_var
END INTERFACE

CONTAINS

FUNCTION addition_var(dx,dy)
  IMPLICIT NONE
  INTEGER :: addition_var
  TYPE(t1),INTENT(IN) :: dx,dy
  addition_var = dx%x + dy%y
END FUNCTION

FUNCTION sub_var(dx,dy)
  IMPLICIT NONE
  INTEGER :: sub_var
  TYPE(t1),INTENT(IN) :: dx,dy
  sub_var = dx%x - dy%y
END FUNCTION

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER :: arr(3:22,3:22,3:22,3:22) = 0

TYPE(t1) :: lx,ly,ux,uy,sx,sy
TYPE(t3) :: tp_3
tp_3%tt_2%tt_1(1,2)%x = 10
tp_3%tt_2%tt_1(1,2)%y = 22

lx%x = 2
ly%y = 3
ux%x = 30
uy%y = 10
sx%x = 7
sy%y = 5

ASSOCIATE(b => arr(tp_3%tt_2%tt_1(1,2)%x:20,lx .plus. ly : , :ux .minus. uy, &
                    :tp_3%tt_2%tt_1(1,2)%y :sx .minus. sy))
  b(lx .plus. ly: , : , sx .minus. sy: , : :sx .minus. sy) = 1
END ASSOCIATE

IF(ALL(arr(14:20,5:22,4:20,3:22:2) == 1)) THEN
  arr(14:20,5:22,4:20,3:22:2) = 1
ELSE
  arr(14:20,5:22,4:20,3:22:2) = 0
END IF

IF(ALL(arr(3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
