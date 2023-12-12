module m1
         integer,private,target:: tar
         type ty1
            integer,pointer :: ptr1
         end type
         type(ty1)::obj = ty1(tar)
contains
 subroutine ss
    tar=10
end
         end

subroutine s1
use m1
call ss
if (obj%ptr1/=10) print *,101
end
call s1
print *,'OK'
end

