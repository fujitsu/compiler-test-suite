module m1
integer,parameter::k=1
end
integer,parameter::k4=8
if (a1()/=1) print *,1
print *,'pass'
contains
      integer(k4) function a1() 
use m1
integer,parameter::kk=1
        a1=kk
      end function a1
end
