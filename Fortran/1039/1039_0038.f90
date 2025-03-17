Module m
  integer i
  contains 
   subroutine s
    i=1
 end subroutine s
end
use m
call ss(s)
if (i/=1)print *,'error'
print *,'pass'
end
subroutine ss(s)
external s
call s
end
