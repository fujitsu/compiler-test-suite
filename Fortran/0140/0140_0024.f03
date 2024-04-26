module m
integer,private:: aaa(30,20,10)
contains
subroutine sss()
if(ubound(aaa,1)/=10) print *,'err'
end subroutine
end
use m
call sss()
print *,"pass"
end
