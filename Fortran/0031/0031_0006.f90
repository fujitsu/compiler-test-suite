module m

complex,target,private  :: tar1(10,4)!
data tar1(10,4) /(2,3)/
type ty1
   real   ,pointer :: ptr1=>tar1(10,4)%im
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 3) print *,'ng-',obj1%ptr1
print *,'OK'
end
