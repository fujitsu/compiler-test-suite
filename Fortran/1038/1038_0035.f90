module m1
 integer,private:: j1
 integer,private,save:: j2
 integer        :: i1
 integer        ,save:: i2
end
call s1()
call s0()
print *,'pass'
end
subroutine s0
use m1
i1=1+i1
i2=1+i2
if (i1/=2)print *,'error-1'
if (i2/=3)print *,'error-1'
end
subroutine s1
use m1
i1=1
i2=2
end
