module m1
  integer:: a=1
end
module m2
use m1
private 
public s2
contains
subroutine s2
  if (a/=1) print *,101
end subroutine
end
module m3
use m2
contains
subroutine s3
call s2
end subroutine
end
use m3,only:s3
call s3
print *,'pass'
end
