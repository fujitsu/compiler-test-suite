module m1
  contains
  subroutine s(c,k)
   integer :: k
   character(EXPONENT(k+1.1)),value:: c(:)

   if (size(c) /= 5) print *,201
   if (len(c) /= 3) print *,202
   if (all(c /= "AAA")) print *,203

   c="111"
   end subroutine
end
    
  
subroutine s1   
use m1
 character(3):: cc(5) = "AAA"

 call s( cc , 3)
 if (all(cc /= "AAA")) print *,101
 end
      
call s1
print *,"PASS"
end
   

