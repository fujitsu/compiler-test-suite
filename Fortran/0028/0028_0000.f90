module m1
         integer,private,target:: tar=10
         type ty1
            integer,pointer :: ptr1
         end type
         type(ty1)::obj = ty1(tar)
         end

subroutine s1
use m1
if (obj%ptr1/=10) print *,101
end
call s1
print *,'OK'
end

