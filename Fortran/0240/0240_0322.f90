module types
type pair_int
integer :: i1,i2
end type pair_int
type pair_real
real :: r1,r2
end type pair_real
end module types
module pair_data
use types
type(pair_int) :: ints_data
type(pair_real) :: reals_data
end module pair_data
use types, ints => pair_int
use pair_data , only : ints_data
print *,'pass'
end
