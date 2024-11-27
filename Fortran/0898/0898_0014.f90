module temp
type ty
  complex,pointer:: temp_a, temp_b
end type
type(ty),protected :: obj
contains
  subroutine set_temp(c)
   real,intent(in),value:: c
   obj%temp_a%re = c
   obj%temp_b%im = obj%temp_a%im + 1
  end subroutine
end module

use temp
real a,b
 a = obj%temp_a%re
 b = obj%temp_b%im
 obj%temp_a%re = 1.0
 obj%temp_b%im = 1.0
end
