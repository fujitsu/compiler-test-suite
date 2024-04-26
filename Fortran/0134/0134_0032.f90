module m1
contains 
subroutine s1(a)
a=1
end subroutine
subroutine s2(k)
k=1
end subroutine
end
subroutine s
use m1
procedure(),pointer::p
p=>s2
call p(k)
end
call s
print *,'pass'
end
