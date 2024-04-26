module m1
 real:: value
end

module m2
 use m1
contains
 subroutine def
 use m1,only:value
  value = 2
  call ref
end subroutine
end

use m2,only: def
call def
print *,'OK'
end

subroutine ref
 use m1
 write(1,*) value
end 
