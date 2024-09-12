module m_output
  implicit none

  interface output
    module procedure output_int
    module procedure output_real
  end interface

contains
  subroutine output_int(i)
    integer, intent(in) :: i
  end subroutine

  subroutine output_real(r)
    real, intent(in) :: r
  end subroutine
end module

program main
  use m_output
  implicit none
  call output(1)
  call output(2.0)
  print *,'pass'
end program
