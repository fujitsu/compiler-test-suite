module m1
contains
subroutine s2(i)
character(i)::k2
k2='1234'
 associate(p=>k2)
   if (len(p)/=3) print *,202
 end associate
end subroutine
subroutine s1
k=3
call s2(k)
end subroutine
end
use m1
call s1
print *,'pass'
end
