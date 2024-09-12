MODULE mod1
  TYPE ty0
    integer :: ii = 10
    CONTAINS
      FINAL::ty0_scl_dest, ty0_arr_dest
  END TYPE ty0
  TYPE ty1
    INTEGER :: jj = 20
    TYPE(ty0),ALLOCATABLE :: ty0_cmp(:)
    CONTAINS
      FINAL::ty1_scl_dest, ty1_arr_dest
  END TYPE ty1
  CONTAINS
   PURE  SUBROUTINE ty0_scl_dest( dmy )
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
  type(ty1), POINTER:: arr(:)
  type(ty1), TARGET:: arr_tar(2)
  type(ty1), POINTER:: arr1(:)
  integer:: i
  ALLOCATE(arr1(2))
  ALLOCATE(arr(4))
  ALLOCATE(arr1(1)%ty0_cmp(2))
  ALLOCATE(arr1(2)%ty0_cmp(2))
  arr_tar(1)%jj = 500
  arr_tar(2)%jj = 600
  arr1(1)%jj = 100
  arr1(1)%ty0_cmp%ii = 110
  arr1(2)%jj = 200
  arr1(2)%ty0_cmp%ii = 210
  PRINT*,'Before FORALL'
  DO i = 1, 4
    PRINT*,arr(i)%jj
  END DO
  FORALL(i = 1:4, FOO1(Foo(i)) .GE. 3 )
        arr(FOO1(Foo(i)) - 2) = arr_tar(FOO1(Foo(i))- 2)
        arr(FOO1(Foo(i))) = arr1(FOO1(Foo(i)) - 2)
  END FORALL
  PRINT*,'After FORALL'
  DO i = 1, 4
    PRINT*,arr(i)%jj
  END DO
  CONTAINS
    PURE FUNCTION Foo(dmy) RESULT(ty_res)
        TYPE(ty1)  :: ty_res(2)
        integer, INTENT(IN)::dmy
        ty_res%jj = dmy
        ALLOCATE(ty_res(1)%ty0_cmp(2))
        ALLOCATE(ty_res(2)%ty0_cmp(2))
        ty_res(1)%ty0_cmp%ii = 100 + dmy
        ty_res(2)%ty0_cmp%ii = 200 + dmy
    END FUNCTION
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty1), INTENT(IN):: dmy(2)
        integer :: res
        res = dmy(1)%jj
    END function
END PROGRAM
