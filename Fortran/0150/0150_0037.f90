module m1
  integer::k=0
 contains
   subroutine s1
     call ss1
     contains
      subroutine ss1
        call s2
      end subroutine
   end subroutine
   subroutine s2
    k=1
   end subroutine
end
use m1
call s1
if (k/=1) print *,101
print *,'pass'
end
