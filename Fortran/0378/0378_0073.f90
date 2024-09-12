module m1
bind(c,name='zzzz')::/z/
common /z/ i1
end
subroutine s1
use m1
common /z/ i2
i2=2
end
use m1
i1=1
call s1
if (i1/=1)print *,i1
call s2
print *,'pass'
end
subroutine s2
common /z/ i2
if (i2/=2)print *,i2
end
