logical::f=.false.
#define z1 zzzzz
#define x1 xxxxx
#define o1 ooooo
#define b1 bbbbb

data i01/z'1111'/
data i02/x'1111'/
data i03/'1111'x/

data k01/o'1111'/
data k02/'1111'o/

data n01/b'1111'/

if (i01/=4369)&
&print *,'error-1'
if (i02/=4369)print *,'error-2'
if (i03/=4369)print *,'error-3'
if (k01/=585)print *,'error-4'
if (k02/=585)print *,'error-5'
if (n01/=15)print *,'error-6'
if( f) print *,101
print *,'pass'
end

