MODULE mod1
  TYPE ty
    integer :: ii = 10
    CONTAINS
      FINAL::destructor
  END TYPE ty


  CONTAINS
    SUBROUTINE destructor( dmy )
      TYPE(ty), INTENT(INOUT):: dmy(1)
      print*,  "destructor"
    END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  type(ty):: obj1
  integer:: i
 forall (i = 1:9)
  ii= f1([(obj1,i=1,2)] ) 
 end forall
 print*, ii 
contains
pure function f1(d1)
type(ty), INTENT(IN)::d1(2)
integer :: f1
f1=10
end function
END PROGRAM


