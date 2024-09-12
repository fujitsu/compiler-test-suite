print *, 'pass'
end
module omega_spinors
  implicit none
  type :: conjspinor
     complex(8), dimension(4) :: a
  end type conjspinor
  type :: spinor
     complex(8), dimension(4) :: a
  end type spinor
  interface operator (*)
     module procedure conjspinor_spinor
  end interface
  private :: conjspinor_spinor
contains
    function conjspinor_spinor (psibar, psi) result (psibarpsi)
    complex(8) :: psibarpsi
    type(conjspinor), intent(in) :: psibar
    type(spinor), intent(in) :: psi
    psibarpsi = psibar%a(1)*psi%a(1) + psibar%a(2)*psi%a(2) &
              + psibar%a(3)*psi%a(3) + psibar%a(4)*psi%a(4)
  end function conjspinor_spinor
end module omega_spinors

module omega_colored_spinors
  use omega_spinors
  implicit none
  integer, parameter :: N_color = 3
  type :: colored_spinor
     type(spinor), dimension(N_color) :: psi
     integer :: aaa
     logical, dimension(N_color) :: zero
  end type colored_spinor
  type :: colored_conjspinor
     type(conjspinor), dimension(N_color) :: psibar
     integer :: aaa
     logical, dimension(N_color) :: zero
  end type colored_conjspinor
  interface operator (*)
     module procedure conjspinor_spinor
  end interface
  private :: conjspinor_spinor
contains
    function conjspinor_spinor (psibar, psi) result (psibarpsi)
    complex(8) :: psibarpsi
    type(colored_conjspinor), intent(in) :: psibar
    type(colored_spinor), intent(in) :: psi
    integer :: i
    psibarpsi = 0
    do i = 1, N_color
       if (.not. (psibar%zero(i) .or. psi%zero(i))) then
          psibarpsi = psibarpsi + psibar%psibar(i)*psi%psi(i)
       end if
    end do
  end function conjspinor_spinor
end module omega_colored_spinors
