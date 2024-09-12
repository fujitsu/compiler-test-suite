module m1
contains
elemental function kf(a2)
integer,intent(in):: a2
kf=a2
end function
end
use m1
integer:: a(3)=[1,2,3]
if (any(kf(a)/=a)) then
   print *,101,kf(a)
endif
print *,'pass'
end
