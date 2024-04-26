module m1
contains
subroutine s1(k)
entry e1(k)
block
block
 integer a(k)
 a=[1,2,3]
 if (any(a/=[1,2,3])) print *,101
end block
end block
end subroutine
subroutine s2(k)
entry e2(k)
do kk=1,k
block
block
 integer a(kk)
 a=1
 if (any(a/=1)) print *,102
 if (size(a)/=kk) print *,142
end block
end block
end do
end subroutine
end
subroutine s0
use m1
call s1(3)
call e1(3)
call s2(3)
call e2(3)
end
call s0
print *,'pass'
end
