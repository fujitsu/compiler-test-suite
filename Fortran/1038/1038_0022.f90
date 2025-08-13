module m1
 integer i1
 integer,save:: i2
end
call s0()
print *,'pass'
end
subroutine s0
use m1
write(9,*)i1
write(9,*)i2
end
