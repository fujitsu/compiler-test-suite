module m2
 real:: value  
contains
 subroutine def
  value = 2   
  call ref
 end subroutine
end

use m2,only: def 
call def
call chk
print *,'OK'
end


subroutine ref  
use m2
 write(1,*) value
 end subroutine

subroutine chk
rewind 1
read(1,*) x
if (x/=2.) print *,202
end

