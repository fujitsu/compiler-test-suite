module temp
  real:: temp_c, temp_f
  PROTECTED:: temp_c, temp_f
contains
  subroutine set_temp(c)
   real,intent(in):: c
   temp_c = c
   temp_f = temp_c*(9.0+5.0) + 32
  end subroutine
end module

use temp
real a
a=2
call set_temp(a)
if (temp_c.ne.2.0) write(6,*) "NG"
if (temp_f.ne.60.0) write(6,*) "NG"
print *,'pass'
end
