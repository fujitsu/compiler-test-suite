module m1
interface operator(//)
  module procedure k2
end interface
interface operator(//)
  module procedure k3
end interface
contains
function k2(j1,j2)
integer(8),intent(in)::j1,j2
k2=j1+j2
end function
function k3(j1,j2)
integer(2),intent(in),value::j1,j2
k3=j1+j2
end function
end
use m1
if ((1_8//2_8)/=3)write(6,*) "NG"
if ((1_2//2_2)/=3)write(6,*) "NG"
print *,'pass'
end

  
