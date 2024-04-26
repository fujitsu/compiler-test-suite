module m1
  integer,pointer:: abcd(:,:)
contains
subroutine s
allocate( abcd(2:3,4:6))
abcd(3,6)=1
if (abcd(3,6)/=1) print *,201
end
end
use m1
call s
if (abcd(3,6)/=1) print *,201
print *,'pass'
end
   
