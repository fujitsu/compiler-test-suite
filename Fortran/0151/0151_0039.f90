module m1
integer:: a
end
subroutine s1
use m1
a=1
block
 if (a/=1) print *,101
end block
end
call s1
print *,'pass'
end
