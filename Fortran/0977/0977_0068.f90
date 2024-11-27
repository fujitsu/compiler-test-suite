module m
contains
 subroutine s(p)
 pointer p
 end subroutine
 subroutine ss
 pointer p
call s(p)
end subroutine
end
use m
call ss
print *,'pass' 
end
