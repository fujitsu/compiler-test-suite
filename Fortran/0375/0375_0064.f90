module mod
  integer :: i
  bind(C)  i
end module
use mod
print *,'pass'
end
