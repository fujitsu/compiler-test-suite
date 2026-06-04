module m1
integer::i1,i2
integer::j1,j2
end module

use m1
volatile::i1,j1

i1=1
i2=2
j1=11
j2=12

if(i1 /= 1) print *,'fail'
if(i2 /= 2) print *,'fail'
if(j1 /= 11) print *,'fail'
if(j2 /= 12) print *,'fail'
print *,'pass'

end
