module m1
 real:: value
end

module m2
contains
 subroutine inner
 use m1
  value = 2
  call ref
 end subroutine
 subroutine def
  call inner
 end subroutine
end

use m2,only: def
call def
print *,'pass'
end

subroutine ref
 use m1
 write(11,*) value
end
