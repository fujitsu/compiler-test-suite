MODULE mod1
  TYPE ty
    integer :: ii = 10
    CONTAINS
      FINAL::destructor
  END TYPE ty

  type :: ty0
  type(ty):: arr
  end type

  CONTAINS
    SUBROUTINE destructor( dmy )
      TYPE(ty), INTENT(INOUT):: dmy
      print*, "destructor called !!!"
    END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  type(ty0):: obj1, obj2
  integer:: i
 forall (i = 1:9)
  ii= f1([obj1, obj2])
 end forall
 if (ii /= 10) print*, 101
 print*, "PASS"
contains
pure function f1(d1)
type(ty0), INTENT(IN)::d1(2)
integer :: f1
f1=10
end function
END PROGRAM
