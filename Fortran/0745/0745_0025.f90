module xi
contains
  subroutine sub(FX, A, V)
    real(8) ::  S, X,FX,A,V
    S = FX(A) / 2.0D0
    DO I = 1, 100000
       X = A + I * 1.D0-4
       S = FX(X) + S
    END DO
    V = S * 1.D0-4
  END subroutine 
END module xi
module subrand
  use xi
  real(8), private :: A
contains
  subroutine Q
    real(8) :: V(10), R
    real(8),parameter,dimension(10)::result=(/&
 -1.727362907722411_8, -2.463368497152182_8, -2.499753180391826_8, -2.499999774929651_8, -2.499999999972224_8, -2.500000000000000_8, -2.500000000000000_8, -2.500000000000000_8, -2.500000000000000_8, -2.500000000000000_8/)

    DO I = 1, 10
       A = I
       call sub(F, 0.0D0, R)
       V(I) = R
    END DO
    if (any(abs(V-result)>0.0000001_8))print *,'error'
  end subroutine 
  function F(X)
    real(8) :: F,X
    F = EXP(-A * (X**2) * A)
  END function F
end module subrand
  use subrand
  implicit none
  call Q
print *,'pass'
end 
