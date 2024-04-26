Module m
  Type t1
    Real c
  Contains
    Final :: f11
  End Type
Contains
  Subroutine f11(x)
    Type(t1),Intent(InOut) :: x(:)
    Print *,'f11 called'
  End Subroutine
End Module
subroutine s1
  Use m
  Type(t1),Allocatable :: x(:)
end
call s1
print *,'pass'
End Program
