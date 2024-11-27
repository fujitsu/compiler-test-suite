module m1
 integer:: m1_i1,m1_i2,m1_i3,m1_i4
 volatile :: m1_i1
end module

module m2
 use m1,m2_i4 => m1_i4
 volatile :: m1_i2
end module

use m2
volatile :: m1_i3
m1_i1=1
m1_i2=2
m1_i3=3
m2_i4=4

if (m1_i1 /= 1) write(6,*) "NG"
if (m1_i2 /= 2) write(6,*) "NG"
if (m1_i3 /= 3) write(6,*) "NG"
if (m2_i4 /= 4) write(6,*) "NG"
print *,'pass'
end
