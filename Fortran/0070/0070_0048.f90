module m1
 type x
   integer::xxxx1
   integer,allocatable::x2(:)
   integer::x1
 end type
 type(x),target,allocatable:: abcde1(:)
contains
subroutine alc
allocate(abcde1(2))
allocate(abcde1(1)%x2(2))
end subroutine
end
module m2
use m1,only:abcdefgh2=>abcde1
end
subroutine s1
use m1
use m2
call alc
abcde1(1)%x1=1
abcdefgh2(1)%x1=abcde1(1)%x1+1
if (abcde1(1)%x1/=2) print *,101
if (abcdefgh2(1)%x1/=2) print *,102
abcde1(1)%x2(2)=1
abcdefgh2(1)%x2(2)=abcde1(1)%x2(2)+1
if (abcde1(1)%x2(2)/=2) print *,111
if (abcdefgh2(1)%x2(2)/=2) print *,112
call ss1(abcde1(1)%x2(2),1)
call ss1(abcdefgh2(1)%x2(2),2)
call ss2(abcde1(1),1)
call ss2(abcdefgh2(1),2)
contains
subroutine ss2(k,kk)
type(x)::k
if (kk==1) then
 if (k%x2(2)/=4) print *,303
else
 if (k%x2(2)/=5) print *,304
endif
k%x2(2)=k%x2(2)+1
end subroutine
subroutine ss1(k,kk)
if (kk==1) then
 if (k/=2) print *,301
else
 if (k/=3) print *,302
endif
k=k+1
end subroutine
end
call s1
print *,'pass'
end
