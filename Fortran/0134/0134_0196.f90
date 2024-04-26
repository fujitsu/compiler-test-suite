module m
contains
subroutine s1(c1,c2) bind(c)
character c1,c2
value c1
c1='12'
c2='12'
end subroutine
subroutine s2(c1,c2)
character c1,c2
value c1
c1='12'
c2='12'
end subroutine
end
use m
character c1,c2
call s1(c1,c2)
call s2(c1,c2)
print *,'pass'
end

