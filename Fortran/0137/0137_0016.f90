module m1
contains
subroutine s1()
integer,pointer::p(:,:)
p=>null()
call z(p)
end subroutine
subroutine z(p)
integer,optional::p(:,:)
call ss(p)
end subroutine
subroutine ss(x) 
integer,optional:: x(4)
end subroutine
end

use m1
call s1()
print *,'pass'
end
