integer function output_int(i)
  implicit none
  integer, intent(in) :: i
  output_int=i
end function

real function output_real(r)
  implicit none
  real, intent(in) :: r
  output_real=r 
end function

program main
  implicit none
  interface output
    integer function output_int(i)
      integer, intent(in) :: i
    end function

    real function output_real(r)
      real, intent(in) :: r
    end function
  end interface

  if(output(2) == 2) then
  else
  print *,'ng',output(2)
  endif
  if(output(2.0) == 2.0) then
  print *, 'pass'
  else
  print *,'ng',output(2.0)
  endif
end program
