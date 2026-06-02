module m1
  implicit none
  procedure(sin), pointer :: ptr 
  interface gen
     procedure ptr
  end interface gen
end module m1
use m1
intrinsic cos
ptr => cos
if (abs(ptr(0.1)-cos(0.1))>0.001) print *,1001
if (abs(gen(0.1)-cos(0.1))>0.001) print *,1002
print *,'sngg724o : pass'
end
