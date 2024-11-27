 call s1
 print *,'pass'
 end
module M
  implicit none
  public :: Sp
contains
  subroutine Sp( X, N )
    real, dimension(:), intent(in) :: X
    integer, intent(out) :: N
    N = size( X )
    return
  end subroutine Sp
end module M
  subroutine s1
  use M
  implicit none
  real, dimension(2) :: X
  integer :: N
  X = (/ 1.0, 2.0 /)
  call Sp( pack(X, (/ .false., .false. /) ), N )
  if (n/=0)write(6,*) "NG"
end 
