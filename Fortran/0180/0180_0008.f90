module m1
  integer,pointer:: abcd1(:,:)
  integer,pointer:: abcd11(:,:)
  integer,pointer:: abcd2(:,:)
  integer,pointer:: abcd12(:,:)
  integer,pointer:: abcd3(:,:)
  integer,pointer:: abcd13(:,:)
  integer,pointer:: abcd4(:,:)
  integer,pointer:: abcd14(:,:)
  integer,pointer:: abcd5(:,:)
  integer,pointer:: abcd15(:,:)
  integer,pointer:: abcd6(:,:)
  integer,pointer:: abcd16(:,:)
  integer,pointer:: abcd7(:,:)
  integer,pointer:: abcd17(:,:)
  integer,pointer:: abcd8(:,:)
  integer,pointer:: abcd18(:,:)
  integer,pointer:: abcd9(:,:)
  integer,pointer:: abcd19(:,:)
end

use m1
call s(abcd11)
if (abcd11(3,5)/=1) print *,1201
call s(abcd12)
if (abcd12(3,5)/=1) print *,1202
call s(abcd13)
if (abcd13(3,5)/=1) print *,1203
call s(abcd14)
if (abcd14(3,5)/=1) print *,1204
call s(abcd15)
if (abcd15(3,5)/=1) print *,1205
call s(abcd16)
if (abcd16(3,5)/=1) print *,1206
call s(abcd17)
if (abcd17(3,5)/=1) print *,1207
call s(abcd18)
if (abcd18(3,5)/=1) print *,1208
call s(abcd19)
if (abcd19(3,5)/=1) print *,1209
call s(abcd1)
if (abcd1(3,5)/=1) print *,201
call s(abcd2)
if (abcd2(3,5)/=1) print *,202
call s(abcd3)
if (abcd3(3,5)/=1) print *,203
call s(abcd4)
if (abcd4(3,5)/=1) print *,204
call s(abcd5)
if (abcd5(3,5)/=1) print *,205
call s(abcd6)
if (abcd6(3,5)/=1) print *,206
call s(abcd7)
if (abcd7(3,5)/=1) print *,207
call s(abcd8)
if (abcd8(3,5)/=1) print *,208
call s(abcd9)
if (abcd9(3,5)/=1) print *,209
print *,'pass'
contains
subroutine s(x)
integer,pointer::x(:,:)
allocate( x(2:3,4:5))
x(3,5)=1
end
end
   
