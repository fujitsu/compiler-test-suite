module m0
integer:: a(3),b(3)
end
module m11
use m0,only:aa=>a,bb=>b
end
module m12
use m0,only:aa=>a,bb=>b
end
module m111
use m11,only:a=>aa,b=>bb
use m0
end
module m121
use m0
use m12,only:a=>aa,b=>bb
end

subroutine s
 use m121
 use m111
 use m0
 use m11
 use m12
 a=(/1,2,3/)
 b=(/11,12,13/)
 k=2
if (a(k)/=2)print *,102,a(2)
if (b(1)/=11)print *,201,b(1)
end  subroutine
call s
print *,'pass'
end
