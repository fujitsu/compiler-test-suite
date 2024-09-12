module m1
contains
subroutine s (n,k)
entry t(n,k) bind(c)
character,value:: n
if (k==1) then
  if (n/='1') print *,1001,n
else
  if (n/='2') print *,1002,n
endif
end subroutine
end
use m1
call s('1',1)
call t('2',2)


print *,'pass'
end
