module m
contains
subroutine s(c)
value c
character*3 c
c='123'
end subroutine
end
use m
call s('123')
print *,'pass'
end
