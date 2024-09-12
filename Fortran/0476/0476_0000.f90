subroutine output_int(i)
  implicit none
  integer, intent(in) :: i
end subroutine

subroutine output_real(r)
  implicit none
  real, intent(in) :: r
end subroutine

program main
  implicit none
  interface output
    subroutine output_int(i)
      integer, intent(in) :: i
    end subroutine

    subroutine output_real(r)
      real, intent(in) :: r
    end subroutine
  end interface

  call output(1)
  call output(2.0)
  print *,'pass'
end program
