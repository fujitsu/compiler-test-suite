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
      print*, "destructor2 called !!!"
   END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  integer:: i
  integer:: ii
  DO CONCURRENT (i = 1:9)
      ii = FOO1(ty(10))
  END DO
  if (ii /= 10) print*, 101
  print*, "PASS"

  CONTAINS
    PURE FUNCTION FOO1(dmy) result(res)
        TYPE(ty), INTENT(IN):: dmy
        integer :: res
        res = dmy%ii
    END function
END PROGRAM
