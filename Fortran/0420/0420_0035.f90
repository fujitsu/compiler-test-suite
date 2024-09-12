module m1
 type x1
  integer::v1=1
  procedure(),pointer,nopass:: p
 end type
 type(x1):: z(2),w
  integer::count=0
contains
 subroutine s1
   call z(2)%p
   call z(2)%p()
   call w%p
   call w%p()
   call ss1
   contains
   subroutine ss1
   call z(2)%p
   call z(2)%p()
   call w%p
   call w%p()
   end subroutine
 end subroutine
 subroutine t
   count=count+1
 end subroutine
end
use m1
z(2)%p=>t
w%p=>t
call s1
call s2
if (count/=16) print *,201
print *,'pass'
end
subroutine s2
 type y1
  integer::v1=1
  procedure(),pointer,nopass:: p
 end type
 type(y1):: z(2),w
call set
   call z(2)%p
   call z(2)%p()
   call w%p
   call w%p()
   call ss1
   contains
   subroutine ss1
   call z(2)%p
   call z(2)%p()
   call w%p
   call w%p()
   end subroutine
   subroutine set
use m1,only:t
z(2)%p=>t
w%p=>t
end subroutine
end subroutine
