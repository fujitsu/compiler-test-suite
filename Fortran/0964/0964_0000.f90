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

PROGRAM MAIN
  USE mod1
  type(ty1):: arr(10)
  integer:: i
  FORALL(i = 1:9)
      arr%obj(1) = arr(i + 1)%obj(1)
  END FORALL
END PROGRAM MAIN
