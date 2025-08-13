module test_module
type test_type
    integer                      :: size
    integer                      :: rank
end type test_type
type (test_type), parameter :: default_var = test_type (0,-1)
integer, parameter :: var_size  = size(transfer(default_var, (/0./)))
end module test_module
use test_module
write(4,*)var_size
if (var_size/=2)print *,'error'
print *,'pass'
end
