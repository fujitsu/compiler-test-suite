module m1
type ty1
end type
end
subroutine sub1()
use m1
type(ty1),external :: sss
call subx(sss)
end

subroutine sub2()
use m1
type(ty1),external :: sss
call suby(sss())
end

subroutine sub3()
use m1
type(ty1) :: sss
sss=ty1()
write(1,*) sss
end

write(1,*)1
call sub1
call sub2
call sub3
write(1,*)2
rewind 1
read(1,*) n;if(n/=1) print *,2002
read(1,*) n;if(n/=2) print *,2003
print *,'pass'
end
function sss() result(r)
use m1
type(ty1)::r
r=ty1()
end
subroutine subx(sss)
use m1
type(ty1),external :: sss
write(1,*) sss()
end
subroutine suby(r)
use m1
type(ty1)::r
write(1,*) r
end



