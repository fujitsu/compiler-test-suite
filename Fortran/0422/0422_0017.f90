module m1
contains
subroutine s1(k)
character(k),allocatable:: z1
character(:),allocatable:: z2
z2='1234'
if (z2/='1234') print *,101
if (len(z2)/=4) print *,201
z1='abcd'
if (z1/='abc') print *,102
if (len(z1)/=3) print *,202
end subroutine 
subroutine s2(k,z1,z2)
character(k),allocatable:: z1
character(:),allocatable:: z2
z2='1234'
if (z2/='1234') print *,301
if (len(z2)/=4) print *,301
z1='abcd'
if (z1/='abc') print *,302
if (len(z1)/=3) print *,302
end subroutine 
end
use m1
character(3),allocatable:: z1
character(:),allocatable:: z2
call s1(3)
call s2(3,z1,z2)
print *,'pass'
end
  
