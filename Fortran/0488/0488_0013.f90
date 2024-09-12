module m1
contains
pure function if(k)
integer,value :: k
if =k
end function
end
subroutine s1
use m1
integer::a(3:4)
do concurrent(kk=3:4)
a(kk)=if(kk)
end do
if (if(1)/=1) print *,101
if (any(a/=[3,4])) print *,201
end
call s1
print *,'pass'
end
