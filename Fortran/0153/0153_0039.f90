module m1
 character(5*4,1):: x2
 integer::k,n
contains
subroutine s1
x2=1_'1111'
if (x2/=1_'1111') print *,101
x2=1_'12121212'
if (x2/=1_'12121212') print *,102
x2=1_'123123123123'
if (x2/=1_'123123123123') print *,103
x2=1_'1234123412341234'
if (x2/=1_'1234123412341234') print *,104
x2=1_'1234123412341234'(1:1)
if (x2/=1_'1') print *,105,X2
x2=1_'1234123412341234'(2:2)
if (x2/=1_'2') print *,106
x2=1_'1234123412341234'(k:n)
if (x2/=1_'23') print *,107
x2=1_'1234123412341234'(2:4)
if (x2/=1_'234') print *,108
end subroutine
end
use m1
k=2
n=3
call s1
print *,'pass'
end
