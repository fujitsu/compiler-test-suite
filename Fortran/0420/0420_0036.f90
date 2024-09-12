module m1
 type d
   integer:: d1
   procedure(),nopass,pointer:: p
 end type
end
subroutine s1
use m1
implicit type(d)(y)
external g1,y1
call ss1(g1)
contains
subroutine ss1(f1)
implicit real(f),type(d)(x)
call f1
call f1()
end subroutine
end
subroutine s2
use m1
implicit type(d)(y)
external y1
call ss2(y1)
contains
subroutine ss2(x1)
implicit real(f),type(d)(x)
call x1
call x1()
end subroutine
end
subroutine s3
use m1
implicit type(d)(y)
external g1
y1%p=>g1
call ss3(y1)
contains
subroutine ss3(x1)
implicit real(f),type(d)(x)
call x1%p()
call x1%p
end subroutine
end
call s1
call s2
call s3
print *,'pass'
end
subroutine y1
end
subroutine g1
end
