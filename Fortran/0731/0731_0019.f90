Program test
  Implicit None
  Real, target :: X
  X=10.0
  Call A((X), X)
print *,'pass'
Contains
  Subroutine A(X, Y)
    Real, intent(in), target :: X
    Real, intent(out) :: Y
    Y=X+1.0
    if(abs(X-Y+1.0)>0.0001)write(6,*) "NG"
  End Subroutine A
End Program test
