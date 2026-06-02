module m1
contains
 recursive subroutine s1(p1,p2,p3,k)
   integer,pointer::p1
   integer,pointer,optional::p2
   integer,pointer,optional::p3
    k=k+1
   if (associated(p1)) print *,101
   if (present(p2)) then
                    print *,101
   else
    if (k<=3) call s1(p1 ,p3=p3,k=k)
   end if
 end subroutine
end
use m1
k=1
call s1(null() ,p3=null(),k=k)
print *,'pass'
end
