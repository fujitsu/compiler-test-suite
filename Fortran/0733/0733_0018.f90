module interval_arithmetic
  real, private, parameter :: inf = huge(1.)
  contains
   subroutine sub
     write(1,*) inf
   end subroutine
end module interval_arithmetic
use interval_arithmetic
call sub
print *,'pass'
end
