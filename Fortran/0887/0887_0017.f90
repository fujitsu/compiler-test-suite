MODULE mod1
  TYPE ty
    integer :: ii = 10
    CONTAINS
      FINAL::destructor1, destructor2
  END TYPE ty

  type ty1
   type(ty) :: obj(10)
  end type 

  CONTAINS
   pure SUBROUTINE destructor1( dmy )
      TYPE(ty), INTENT(INOUT):: dmy(*)
   END SUBROUTINE

   SUBROUTINE destructor2( dmy )
      TYPE(ty), INTENT(INOUT):: dmy
   END SUBROUTINE
  
END MODULE mod1

PROGRAM main
  USE mod1
  integer:: i
  DO CONCURRENT (i = 1:9)
      print* , FOO1(ty(10))
  END DO
  CONTAINS
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty), INTENT(IN):: dmy
        integer :: res
        res = dmy%ii
    END function
END PROGRAM
