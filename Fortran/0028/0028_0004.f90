module m1
         integer,private,target:: tar=10
         integer,pointer :: ptr1
contains
 subroutine ss
    ptr1=> tar
end
         end

subroutine s1
use m1
call ss
if (ptr1/=10) print *,101
end
call s1
print *,'OK'
end

