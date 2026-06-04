MODULE mod1
  TYPE ty0
    integer :: ii = 10
    CONTAINS
      FINAL::ty0_scl_dest, ty0_arr_dest
  END TYPE ty0
  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0) :: ty0_cmp
    CONTAINS
      FINAL::ty1_scl_dest, ty1_arr_dest
  END TYPE ty1
  INTERFACE
    PURE FUNCTION Foo(dmy) RESULT(ty_res)
        IMPORT ty1
        TYPE(ty1)  :: ty_res(2)
        INTEGER, INTENT(IN)::dmy
    END FUNCTION
    PURE FUNCTION FOO1(dmy) result(res)
        IMPORT ty1
        TYPE(ty1), INTENT(IN):: dmy(2)
        integer :: res
    END function
  END INTERFACE
  CONTAINS
    PURE SUBROUTINE ty0_scl_dest( dmy )
      TYPE(ty0), INTENT(INOUT):: dmy
    END SUBROUTINE
    PURE SUBROUTINE ty0_arr_dest( dmy )
      TYPE(ty0), INTENT(INOUT):: dmy(:)
    END SUBROUTINE
    PURE SUBROUTINE ty1_scl_dest( dmy )
      TYPE(ty1), INTENT(INOUT):: dmy
    END SUBROUTINE
    PURE SUBROUTINE ty1_arr_dest( dmy )
      TYPE(ty1), INTENT(INOUT):: dmy(:)
    END SUBROUTINE
END MODULE mod1

PROGRAM MAIN
  USE mod1
  CALL PPRO
  print *,'pass'
  CONTAINS
    SUBROUTINE PPRO()
       type(ty1) :: arr(SUM((/(i, i = 1, FOO1(Foo(2)))/)))
    END SUBROUTINE
END PROGRAM MAIN

 PURE FUNCTION Foo(dmy) RESULT(ty_res)
  USE mod1
  TYPE(ty1)  :: ty_res(2)
  INTEGER, INTENT(IN)::dmy
  ty_res%jj = dmy
  ty_res(1)%ty0_cmp%ii = 110
  ty_res(2)%ty0_cmp%ii = 120

  ty_res(1)%ty0_cmp%ii = 210
  ty_res(2)%ty0_cmp%ii = 220
END FUNCTION
PURE  FUNCTION FOO1(dmy) result(res)
  USE mod1
  TYPE(ty1), INTENT(IN):: dmy(2)
  integer :: res
  res = dmy(1)%jj
END function
