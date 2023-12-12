
module m
integer,private::a(101,102,103,3)
contains
subroutine sss()
if(ubound(a,1)/=101) print *,'err'

end subroutine
end
use m
call sss()
print *,'OK'
end
