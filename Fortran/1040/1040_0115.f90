module m1
  integer,save::y(10,10,10,10)
  integer::i2=2,i3=3,i4=4,i5=5
  integer::v2(2)=(/1,2/),v3(3)=(/1,2,3/),v4(4)=(/1,2,3,4/),v5(5)=(/1,2,3,4,5/)
  integer,dimension(120),parameter::f4c=(/&
1,2,11,12,21,22,101,102,111,112,121,122,201,202,211,212,221,222,301,302,311,312,&
321,322,1001,1002,1011,1012,1021,1022,1101,1102,1111,1112,1121,1122,1201,1202,1211,&
1212,1221,1222,1301,1302,1311,1312,1321,1322,2001,2002,2011,2012,2021,2022,2101,2102,&
2111,2112,2121,2122,2201,2202,2211,2212,2221,2222,2301,2302,2311,2312,2321,2322,&
3001,3002,3011,3012,3021,3022,3101,3102,3111,3112,3121,3122,3201,3202,3211,3212,3221,&
3222,3301,3302,3311,3312,3321,3322,4001,4002,4011,4012,4021,4022,4101,4102,4111,&
4112,4121,4122,4201,4202,4211,4212,4221,4222,4301,4302,4311,4312,4321,4322&
/)
  contains
  function f01(d) result(r)
  integer::d(:)
  integer::r(size(d))
  r=reshape((/d/),(/2/))
  end function
  function f02(d) result(r)
  integer::d(:,:)
  integer::r(size(d))
  r=reshape((/d/),(/6/))
  end function
  function f03(d) result(r)
  integer::d(:,:,:)
  integer::r(size(d))
  r=reshape((/d/),(/24/))
  end function
  function f04(d) result(r)
  integer::d(:,:,:,:)
  integer::r(size(d))
  r=reshape((/d/),(/24*5/))
  end function
end
module m2
use m1
contains
subroutine s01(d)
integer::d(:)
  if (any(f01(d(v2))/=(/1,1001/)))write(6,*) "NG"
  if (size(f01(d(v2)))/=2)write(6,*) "NG"
  if (any(lbound(f01(d(v2)))/=1))write(6,*) "NG"
  if (any(ubound(f01(d(v2)))/=2))write(6,*) "NG"
end subroutine
subroutine s02(d)
integer::d(:,:)
  if (any(f02(d(v2,:3))/=(/ 1,101,1001,1101,2001,2101/)))write(6,*) "NG"
  if (size(f02(d(v2,:3)))/=6)write(6,*) "NG"
  if (any(lbound(f02(d(v2,:3)))/=1))write(6,*) "NG"
  if (any(ubound(f02(d(v2,:3)))/=6))write(6,*) "NG"
  if (any(f02(d(:2,v3))/=(/ 1,101,1001,1101,2001,2101/)))write(6,*) "NG"
  if (size(f02(d(:2,v3)))/=6)write(6,*) "NG"
  if (any(lbound(f02(d(:2,v3)))/=1))write(6,*) "NG"
  if (any(ubound(f02(d(:2,v3)))/=6))write(6,*) "NG"
  if (any(f02(d(v2,v3))/=(/ 1,101,1001,1101,2001,2101/)))write(6,*) "NG"
  if (size(f02(d(v2,v3)))/=6)write(6,*) "NG"
  if (any(lbound(f02(d(v2,v3)))/=1))write(6,*) "NG"
  if (any(ubound(f02(d(v2,v3)))/=6))write(6,*) "NG"
end subroutine
subroutine s03(d)
integer::d(:,:,:)
  if (any(f03(d(v2,:3,:4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(v2,:3,:4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(v2,:3,:4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(v2,:3,:4)))/=24))write(6,*) "NG"
  if (any(f03(d(v2,v3,:4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(v2,v3,:4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(v2,v3,:4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(v2,v3,:4)))/=24))write(6,*) "NG"
  if (any(f03(d(: 2,v3,:4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(: 2,v3,:4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(: 2,v3,:4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(: 2,v3,:4)))/=24))write(6,*) "NG"
  if (any(f03(d(: 2,:3,v4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(: 2,:3,v4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(: 2,:3,v4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(: 2,:3,v4)))/=24))write(6,*) "NG"
  if (any(f03(d(v2,:3,v4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(v2,:3,v4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(v2,:3,v4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(v2,:3,v4)))/=24))write(6,*) "NG"
  if (any(f03(d(: 2,v3,v4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(: 2,v3,v4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(: 2,v3,v4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(: 2,v3,v4)))/=24))write(6,*) "NG"
  if (any(f03(d(v2,v3,v4))/=(/&
1,11,101,111,201,211,1001,1011,1101,1111,1201,1211,2001,2011,2101,2111,2201,2211,3001,3011,3101,3111,3201,3211&
/)))write(6,*) "NG"
  if (size(f03(d(v2,v3,v4)))/=24)write(6,*) "NG"
  if (any(lbound(f03(d(v2,v3,v4)))/=1))write(6,*) "NG"
  if (any(ubound(f03(d(v2,v3,v4)))/=24))write(6,*) "NG"
end subroutine
subroutine s04(d)
integer::d(:,:,:,:)
  if (any(f04(d(v2,:3,:4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,:3,:4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,:3,:4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,:3,:4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(v2,v3,:4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,v3,:4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,v3,:4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,v3,:4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(v2,v3,v4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,v3,v4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,v3,v4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,v3,v4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(v2,:3,v4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,:3,v4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,:3,v4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,:3,v4,:5)))/=24*5))write(6,*) "NG"
  if (size(f04(d(v2,v3,v4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,v3,v4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,v3,v4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(v2,:3,v4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,:3,v4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,:3,v4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,:3,v4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,v3,:4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,v3,:4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,v3,:4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,v3,:4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,v3,v4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,v3,v4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,v3,v4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,v3,v4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,v3,v4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,v3,v4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,v3,v4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,v3,v4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,v3,: 4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,v3,: 4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,v3,: 4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,v3,: 4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,:3,v4,:5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,:3,v4,:5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,:3,v4,:5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,:3,v4,:5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,:3,v4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,:3,v4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,:3,v4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,:3,v4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: 2,:3,:4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: 2,:3,:4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: 2,:3,:4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: 2,:3,:4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(: i2,:3,:4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(: i2,:3,:4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(: i2,:3,:4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(: i2,:3,:4,v5)))/=24*5))write(6,*) "NG"
  if (any(f04(d(v2,:3,:4,v5))/=f4c))write(6,*) "NG"
  if (size(f04(d(v2,:3,:4,v5)))/=24*5)write(6,*) "NG"
  if (any(lbound(f04(d(v2,:3,:4,v5)))/=1))write(6,*) "NG"
  if (any(ubound(f04(d(v2,:3,:4,v5)))/=24*5))write(6,*) "NG"
end subroutine
end
use m2
y=reshape((/(i,i=1,10000)/),(/10,10,10,10/))
call s01(y(1,1,1,:10))
call s02(y(1,1,:10,:10))
call s03(y(1,1:10,:10,:10))
call s04(y(1:10,1:10,:10,:10))
print *,'pass'
end
