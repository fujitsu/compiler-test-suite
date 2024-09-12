      MODULE m0
        INTERFACE
          SUBROUTINE CCEL_TCMDL_SKELETON(SUB)
        INTERFACE
          SUBROUTINE CCEL_TCMDL_PROCEDURE(i,j,k)
           integer,pointer :: i
           integer,allocatable :: j(:)
           type ty1
            integer ::i
           end type
          END
        END INTERFACE
          PROCEDURE (CCEL_TCMDL_PROCEDURE)          :: SUB,SUB2
          END SUBROUTINE
        END INTERFACE
      END 

      MODULE CCEL_UTILS
        USE m0
      END MODULE CCEL_UTILS

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
          END SUBROUTINE
          SUBROUTINE SUB2(i,j,k)
           integer,pointer :: i
           integer,allocatable :: j(:)
           type ty1
            integer ::i
           end type
           type(ty1) ,pointer :: k(:)
          END SUBROUTINE
