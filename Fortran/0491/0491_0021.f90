module m
        INTERFACE
          SUBROUTINE CCEL_TCMDL_PROCEDURE(i,j,k)
           integer,pointer :: i
           integer,allocatable :: j(:)
           type ty1
            integer ::i
           end type
          END SUBROUTINE
        END INTERFACE
end
      MODULE STL_MODULE
        INTERFACE
          SUBROUTINE CCEL_TCMDL_SKELETON(SUB)
use m
          PROCEDURE (CCEL_TCMDL_PROCEDURE)          :: SUB,SUB2,SUB3
          END SUBROUTINE
        END INTERFACE
        INTERFACE
          FUNCTION IN_CCEL_REGION()
          END FUNCTION
        END INTERFACE
      END MODULE STL_MODULE

      MODULE CCEL_UTILS
        USE STL_MODULE
      END MODULE CCEL_UTILS
module m1
      USE CCEL_UTILS,only:CCEL_TCMDL_SKELETON2=>CCEL_TCMDL_SKELETON
end
module m2
      USE CCEL_UTILS,only:CCEL_TCMDL_SKELETON2=>CCEL_TCMDL_SKELETON
end
module m0
use m1
use m2
end
      use m0
      print *,'pass'
      END 
          SUBROUTINE SUB(i,j,k)
           integer,pointer :: i
           integer,allocatable :: j(:)
           type ty1
            integer ::i
           end type
           type(ty1) ,pointer :: k(:)
ENTRY SUB2(i,j,k)
ENTRY SUB3(i,j,k)
          END SUBROUTINE
