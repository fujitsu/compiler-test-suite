module m1
implicit none
integer,parameter::k2=2,k4=4
end
use m1
real(k2):: r2=0
real(k4):: r4=0
complex(k2):: c2=0
complex(k4):: c4=0
call s1(r2)
call s2(r4)
call s3(c2)
call s4(c4)
call s1(r2)
call s2(r4)
call s3(c2)
call s4(c4)
call s1(r2)
call s2(r4)
call s3(c2)
call s4(c4)
call s1(r2)
call s2(r4)
call s3(c2)
call s4(c4)
print *,'pass'
end
subroutine s1(r2) 
use m1
real(k2):: r2
if (k2==10000) r2=1
end 
subroutine s2(r4) 
use m1
real(k4):: r4
if (k4==10000) r4=1
end 
subroutine s3(c2) 
use m1
complex(k2):: c2
if (k2==10000) c2=1
end 
subroutine s4(c4) 
use m1
complex(k4):: c4
if (k4==10000) c4=1
end 
