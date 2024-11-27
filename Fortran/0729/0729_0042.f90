  integer :: i=0
  real    :: x
  x = f_i_plus_1()
  print *,'pass'
contains
  function f_i_plus_1() result ( R )
  implicit NONE
   real  R
    i = i + 1
    R = i
  end function f_i_plus_1
end 
