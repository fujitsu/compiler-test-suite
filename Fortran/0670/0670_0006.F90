#define not nnnn
#define true tttt

module m1
interface operator(.nnnn.)
  module procedure ir1
end interface
interface operator(.tttt.)
  module procedure ir1
end interface
contains
 function ir1(i)
   intent(in)::i
   ir1=i
 end function
end
use m1
if (.not.(.true.1)/=1)print *,'error-1'
print *,'pass'
end
