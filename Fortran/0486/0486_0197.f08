module m1
integer:: w(4)=0
contains
 subroutine ss1
   w(1)=1
 end subroutine
 subroutine ss2
   w(2)=1
 end subroutine
subroutine s2( x ,k)
procedure(ss1):: x
optional:: x
if (present(x)) then
   call x
   if (k/=1) print *,1101
else
   if (k/=0) print *,1102
endif
 end subroutine
subroutine s1( x ,k)
interface 
 subroutine x
 end subroutine
end interface
optional:: x
if (present(x)) then
   call x
   if (k/=1) print *,1101
else
   if (k/=0) print *,1102
endif
 end subroutine
end
use m1
call s1(   k=0)
if (w(1)/=0) print *,101
call s1(ss1, 1)
if (w(1)/=1) print *,102
call s2(   k=0)
if (w(2)/=0) print *,201
call s2(ss2, 1)
if (w(2)/=1) print *,202
print *,'pass'
end
