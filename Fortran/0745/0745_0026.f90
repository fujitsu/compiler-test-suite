module xi
contains
  subroutine sub(FX, A, V)
    S = FX(A) / 2.0
    DO I = 1, 100000
       X = A + I * 1.E0-4
       S = FX(X) + S
    END DO
    V = S * 1.E-4
  END subroutine 
END module xi
module subrand
  use xi
  private :: A
contains
  subroutine Q
    real :: V(10)
    real,parameter,dimension(10)::result=(/&
 0.88622,0.44311,0.29540,&
 0.22155,0.17724,0.14770,&
 0.12660,0.11077,9.84696E-02,&
 8.86226E-02/)
    DO I = 1, 10
       A = I
       call sub(F, 0., R)
       V(I) = R
    END DO
    if (any(abs(V-result)>1.))print *,'error'
  end subroutine 
  function F(X)
    F = EXP(-A * (X**2) * A)
  END function F
end module subrand
  use subrand
  call Q
print *,'pass'
end 
