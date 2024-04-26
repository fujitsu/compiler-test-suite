module m1
  integer,pointer:: abcd(:,:)
end

use m1
allocate( abcd(2:3,4:6))
abcd(3,6)=1
if (abcd(3,6)/=1) print *,201
print *,'pass'
end
   
