module m1
type,bind(c) :: ty1
 integer(kind=1) :: int1_1
 integer(kind=2) :: int2_1
 integer(kind=4) :: int4_1
 integer(kind=8) :: int8_1

 real(kind=4) :: real4_1
 real(kind=8) :: real8_1
 real(kind=16) :: real16_1

 complex(kind=8) :: comp8_1
 complex(kind=16) :: comp16_1

 logical(kind=1) :: logical1_1

 character(len=1) :: char1_1
end type

type(ty1),bind(c) :: ty1_01

contains
subroutine sub1
  ty1_01%int1_1 = 1
  ty1_01%int2_1 = 1
  ty1_01%int4_1 = 1
  ty1_01%int8_1 = 1

  ty1_01%real4_1 = 1.0
  ty1_01%real8_1 = 1.0
  ty1_01%real16_1 = 1.0

  ty1_01%comp8_1 = (1.0,1.0)
  ty1_01%comp16_1 = (1.0,1.0)

  ty1_01%logical1_1 = .TRUE.

  ty1_01%char1_1 = 'a'
end subroutine
end module

use m1
call sub1

if(ty1_01%int1_1 /= 1) print *,'fail'
if(ty1_01%int2_1 /= 1) print *,'fail'
if(ty1_01%int4_1 /= 1) print *,'fail'
if(ty1_01%int8_1 /= 1) print *,'fail'

if(ty1_01%real4_1 /= 1.0) print *,'fail'
if(ty1_01%real8_1 /= 1.0) print *,'fail'
if(ty1_01%real16_1 /= 1.0) print *,'fail'

if(ty1_01%comp8_1 /= (1.0,1.0)) print *,'fail'
if(ty1_01%comp16_1 /= (1.0,1.0)) print *,'fail'

if(ty1_01%logical1_1 .neqv. .TRUE.) print *,'fail'

if(ty1_01%char1_1 /= 'a') print *,'fail'

print *,'pass'
end
