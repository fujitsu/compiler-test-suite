module m1
  contains
   subroutine foo(x)
    character(1)::x
    if (x/='1') print *,101
   end subroutine
   subroutine s(c)
   character(1),intent(out)::c
   c='1'
   10 continue
   call foo(c(1:1))
   if (c/='1') print *,102
   end subroutine
end
use m1
character(1)::c
call s(c)
   if (c/='1') print *,103
print *,'pass'
end
   

