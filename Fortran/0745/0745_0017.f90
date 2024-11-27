module integrand
  implicit none
  real(KIND=8), private :: A
contains
  subroutine integ(Arg, Val)
    real(KIND=8), intent(IN) ::  Arg
    real(KIND=8) :: Func
    real(KIND=8), intent(OUT) :: Val
    real(KIND=8) ::  Sum, Dx, X
    integer I
    integer, parameter :: N = 100000

    Sum = F(Arg) / 2.0D0
    Dx = 1D-4
    DO I = 1, N
       X = Arg + I * Dx
       Sum = F(X) + Sum
    END DO
    Val = Sum * Dx
  END subroutine integ
  subroutine Q
    integer, parameter :: NVal = 10
    real(KIND=8) :: Val(NVal), R
    real,parameter,dimension(NVal)::result=(/&
 0.8862269254527015_8,0.4431134627263661_8,0.2954089751509159_8,&
 0.2215567313631853_8,0.1772453850905518_8,0.1477044875754580_8,&
 0.1266038464932506_8,0.1107783656815945_8,9.846965838363972E-02_8,&
 8.862269254527540E-02_8/)
    integer :: I
    DO I = 1, NVal
       a = DBLE(I)
       call integ( 0.0D0, R)
       Val(I) = R
    END DO
    if (any(abs(Val-result)>0.0000001_8))print *,'error'
  end subroutine Q
  function F(x)
    real(KIND=8) :: F
    real(KIND=8), intent(IN) :: X

    F = exp(-A * X * X * A)
  END function f
end module integrand
program test
  use integrand
  implicit none
  call Q
print *,'pass'
end program test
