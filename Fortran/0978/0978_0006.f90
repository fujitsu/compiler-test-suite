module m1
interface operator(.a.)
  module procedure a
end interface
contains
function a(c1,c2)
integer,intent(in):: c1
character(*),intent(in):: c2
integer a
if (c1/=2)write(6,*) "NG"
if (c2/='2')write(6,*) "NG"
a=1
end function
end
module m2
use m1
contains
subroutine s1
if ((2.a.'2')/=1)write(6,*) "NG"
end subroutine s1
end
subroutine t0
use m2,operator(.c.)=>operator(.a.)
if ((2.c.'2')/=1)write(6,*) "NG"
end
subroutine t1
use m1,operator(.c.)=>operator(.a.)
if ((2.c.'2')/=1)write(6,*) "NG"
end
module m3
use m2,operator(.d.)=>operator(.a.)
contains
subroutine x0
if ((2.d.'2')/=1)write(6,*) "NG"
end subroutine 
end
use m3,operator(.e.)=>operator(.d.)
call t0
call t1
call x0
if ((2.e.'2')/=1)write(6,*) "NG"
print *,'pass'
end


