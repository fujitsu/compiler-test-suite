module m1
 integer(kind=1),bind(c) :: int1_1
 integer(kind=2),bind(c) :: int2_1
 integer(kind=4),bind(c) :: int4_1
 integer(kind=8),bind(c) :: int8_1

 real(kind=4),bind(c) :: real4_1
 real(kind=8),bind(c) :: real8_1
 real(kind=16),bind(c) :: real16_1

 complex(kind=8),bind(c) :: comp8_1
 complex(kind=16),bind(c) :: comp16_1

 logical(kind=1),bind(c) :: logical1_1

 character(len=1),bind(c) :: char1_1
contains
 subroutine sub1
  int1_1 = 1
  int2_1 = 1
  int4_1 = 1
  int8_1 = 1

  real4_1 = 1.0
  real8_1 = 1.0
  real16_1 = 1.0

  comp8_1 = (1.0,1.0)
  comp16_1 = (1.0,1.0)

  logical1_1 = .TRUE.

  char1_1 = 'a'
 end subroutine
end module

module m2
 integer,bind(c,name='int4_2') :: int4_2
contains
 subroutine sub2
  int4_2 = 1
 end subroutine
end module

use m1
use m2
call sub1
call sub2

if(int1_1 /= 1) print *,'fail'
if(int2_1 /= 1) print *,'fail'
if(int4_1 /= 1) print *,'fail'
if(int8_1 /= 1) print *,'fail'

if(real4_1 /= 1.0) print *,'fail'
if(real8_1 /= 1.0) print *,'fail'
if(real16_1 /= 1.0) print *,'fail'

if(comp8_1 /= (1.0,1.0)) print *,'fail'
if(comp16_1 /= (1.0,1.0)) print *,'fail'

if(logical1_1 .neqv. .TRUE.) print *,'fail'

if(char1_1 /= 'a') print *,'fail'

if(int4_2 /= 1) print *,'fail'

print *,'pass'
end
