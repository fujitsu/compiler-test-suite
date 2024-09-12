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
      TYPE(ty1), INTENT(INOUT):: dmy( :)
    END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  type(ty1), target:: arr(5, 5)
  integer:: i
  arr(1,:)%jj = 100
  arr(1,:)%ty0_cmp%ii = 110
  arr(2,:)%jj = 200
  arr(2,:)%ty0_cmp%ii = 210
  arr(3,:)%jj = 300
  arr(3,:)%ty0_cmp%ii = 310
  arr(4,:)%jj = 400
  arr(4,:)%ty0_cmp%ii = 410
  arr(5,:)%jj = 500
  arr(5,:)%ty0_cmp%ii = 510
   PRINT*,'BEFORE FORALL'
  DO i = 1,5
   PRINT*,arr(i,1)%jj
  END DO
  FORALL(i = 1:5, FOO1(Foo(i)) .EQ. 3 )
        arr(i,:) = arr(i + 1,:)
  END FORALL
    PRINT*,'AFTER FORALL'
  DO i = 1,5
    PRINT*,arr(i,1)%jj
  END DO
  CONTAINS
    PURE FUNCTION Foo(dmy) RESULT(ty_res)
        TYPE(ty1)  :: ty_res
        integer, intent(in)::dmy
        ty_res%jj = dmy
        ty_res%ty0_cmp%ii = 100 + dmy
    END FUNCTION
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty1), INTENT(IN):: dmy
        integer :: res
        res = dmy%jj
    END function
END PROGRAM
