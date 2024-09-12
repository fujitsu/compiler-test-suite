MODULE mod1
  TYPE ty0
    integer :: ii = 10
    CONTAINS
      FINAL::ty0_scl_dest, ty0_arr_dest
  END TYPE ty0
  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0) :: ty0_cmp(2)
    CONTAINS
      FINAL::ty1_scl_dest, ty1_arr_dest
  END TYPE ty1
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

PROGRAM main
  USE mod1
  type(ty1):: arr(4)
  type(ty1) :: obj
  integer:: i

  arr(1)%jj = 100
  arr(1)%ty0_cmp(1)%ii = 110
  arr(1)%ty0_cmp(2)%ii = 120
  arr(2)%jj = 200
  arr(2)%ty0_cmp(1)%ii = 210
  arr(2)%ty0_cmp(2)%ii = 220
  arr(3)%jj = 300
  arr(3)%ty0_cmp(1)%ii = 310
  arr(3)%ty0_cmp(2)%ii = 320
  arr(4)%jj = 400
  arr(4)%ty0_cmp(1)%ii = 410
  arr(4)%ty0_cmp(2)%ii = 420
  PRINT*,'Before FORALL'
  DO i = 1, 4
    PRINT*,arr(i)%jj
  END DO
  FORALL(i = 1:4, i == FOO1(Foo(4)) )
    arr = (/obj, obj, obj, obj/)
  END FORALL
  PRINT*,'After FORALL'
  DO i = 1, 4
    PRINT*,arr(i)%jj
  END DO

  IF(arr(1)%jj .EQ. 10) PRINT*,arr(1)%jj
  CONTAINS
    PURE FUNCTION Foo(dmy) RESULT(ty_res)
        TYPE(ty1)  :: ty_res(2)
        integer, INTENT(IN)::dmy
        ty_res%jj = dmy
        ty_res(1)%ty0_cmp%ii = 100 + dmy
        ty_res(2)%ty0_cmp%ii = 200 + dmy
    END FUNCTION
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty1), INTENT(IN):: dmy(2)
        integer :: res
        res = dmy(1)%jj
    END function
END PROGRAM
