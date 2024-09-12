module m1
contains
subroutine s (n)
entry t(n) bind(c)
character,value:: n
end subroutine
end
use m1
call s('1')
call t('2')

print *,'pass'
end
