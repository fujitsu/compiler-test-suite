module m1
contains
subroutine s1(v1,v2,v3,v4)
integer,asynchronous:: v1
integer,asynchronous:: v2(1)
integer,asynchronous:: v3(*)
integer,asynchronous:: v4(:)
write(1,*) v1
write(1,*) v2(1)
write(1,*) v3(1)
write(1,*) v4(1)
end subroutine
end

use m1
integer:: v1=0,v2(2)=0,v3(2)=0,v4(2)=0
call s1(v1,v2,v3,v4)
print *,'pass'
end
