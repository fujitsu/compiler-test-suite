MODULE mod1
  TYPE ty
    integer :: ii = 10
    CONTAINS
      FINAL::destructor, dest_arr
  END TYPE ty
  CONTAINS
   PURE  SUBROUTINE destructor( dmy )
      TYPE(ty), INTENT(INOUT):: dmy
    END SUBROUTINE
    PURE SUBROUTINE dest_arr( dmy )
      TYPE(ty), INTENT(INOUT):: dmy(:)
    END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  type(ty):: arr(6), obj
  integer:: i
  obj%ii  = 50
  arr(1)%ii = 100
  arr(2)%ii = 200
  arr(3)%ii = 300
  arr(4)%ii = 400
  arr(5)%ii = 500
  arr(6)%ii = 600
  PRINT*,'Before FORALL'
  DO i = 1, 6
    PRINT*,arr(i)%ii
  END DO
  FORALL(i = 1:6, MOD(i, 2).EQ. 0 )
     arr(i)= obj
  END FORALL
  PRINT*,'After FORALL'
  DO i = 1, 6
    PRINT*,arr(i)%ii
  END DO

  CONTAINS
    PURE FUNCTION Foo(dmy) RESULT(ty_res)
        TYPE(ty)  :: ty_res
        integer, intent(in)::dmy
        ty_res%ii = dmy
    END FUNCTION
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty), INTENT(IN):: dmy
        integer :: res
        res = dmy%ii
    END function
END PROGRAM
