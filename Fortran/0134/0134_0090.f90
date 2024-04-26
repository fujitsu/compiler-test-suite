program KindTest


  type :: C
    real(kind=kind(0.0d0)), pointer :: V(:)
  end type C

  type :: T
    type(c), pointer :: X(:)
  end type T
print *,'pass'
contains

  subroutine S ( H, I, F )
    type(T), intent(inout) :: H
    integer, intent(in) :: I
    real(kind(h%x(2)%v)), intent(in), optional :: F
    if (kind(F)/=8)print *,'error'
  end subroutine S

end program KindTest

