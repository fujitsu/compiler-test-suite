module m1
contains
 SUBROUTINE SUB (X)
  REAL, INTENT (IN) :: X
  if(X.ne.20)print*,"101"
 END SUBROUTINE SUB
  function function1(Y)
  REAL::Y,function1
  Y=30
  function1 =30
 END function
END module

use m1
procedure(SUB),pointer:: proc2=>SUB
procedure(function1),pointer:: proc4=>function1
if(associated(proc2).neqv..true.)print*,"101"
if(associated(proc4).neqv..true.)print*,"102"
call proc2(20.0)
print*,"PASS"
end
