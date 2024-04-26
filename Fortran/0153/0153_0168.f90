module vars
  implicit none
  public

  real(8), allocatable :: a(:,:)
  integer :: IA, JA

  abstract interface
     subroutine sub( x, y )
       real(8), intent(out) :: x
       real(8), intent(in) :: y
     end subroutine sub
  end interface

  procedure(sub), pointer :: sub2 => NULL()
  public :: sub2

contains

  subroutine setup(i,j)
    integer, intent(in) :: i,j

    IA = i
    JA = j

    allocate(a(IA,JA))

    sub2 => sub1

  end subroutine setup

  subroutine sub1( x, y )
    real(8), intent(out) :: x
    real(8), intent(in) :: y
    x = y
  end subroutine sub1

end module vars

module test
  implicit none
  private
  public :: abc

contains
  subroutine abc(x)
    use vars, only: a, sub1, sub2, IA, JA
    implicit none
    real(8), intent(inout) :: x(IA,JA)

    integer  :: i, j

      do j = 1, JA
      do i = 1, IA
         call sub1( x(i,j), a(i,j) )
      enddo
      enddo

      do j = 1, JA
      do i = 1, IA
         call sub2( x(i,j), a(i,j) )
      enddo
      enddo

    return
  end subroutine abc

end module test

use vars
call setup(1,100)
print *,'pass'
end
