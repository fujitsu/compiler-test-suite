recursive subroutine s1(k)
integer a01(2)
integer,pointer     ::a02(:)
integer,allocatable::a03(:)
integer a04(k)
integer b01
integer,pointer     ::b02
integer,allocatable::b03
allocate(a02(2),b02)
allocate(a03(2),b03)
b01=0
b02=0
b03=0
!if (any(a01/=0)) print *,1101
!if (any(a02/=0)) print *,1102
!if (any(a03/=0)) print *,1103
!if (any(a04/=0)) print *,1104
if (   (b01/=0)) print *,1201
if (   (b02/=0)) print *,1202
if (   (b03/=0)) print *,1203
a01=-1
a02=-1
a03=-1
a04=-1
b01=-1
b02=-1
b03=-1
write(1,*)a01,a02,a03,a04,b01,b02,b03
deallocate(a02,a03,b02,b03)
end
recursive subroutine s2(k)
complex a01(2)
complex,pointer     ::a02(:)
complex,allocatable::a03(:)
complex a04(k)
complex b01
complex,pointer     ::b02
complex,allocatable::b03
allocate(a02(2),b02)
allocate(a03(2),b03)
b01=0
b02=0
b03=0
!if (any(a01/=0)) print *,2101
!if (any(a02/=0)) print *,2102
!if (any(a03/=0)) print *,2103
!if (any(a04/=0)) print *,2104
if (   (b01/=0)) print *,2201
if (   (b02/=0)) print *,2202
if (   (b03/=0)) print *,2203
a01=(-1,-1)
a02=(-1,-1)
a03=(-1,-1)
a04=(-1,-1)
b01=(-1,-1)
b02=(-1,-1)
b03=(-1,-1)
write(1,*)a01,a02,a03,a04,b01,b02,b03
deallocate(a02,a03,b02,b03)
end
recursive subroutine s3(k)
character(10),parameter::z0=repeat(char(0),10)
character(10) a01(2)
character(10),pointer     ::a02(:)
character(10),allocatable::a03(:)
character(10) a04(k)
character(10) b01
character(10),pointer     ::b02
character(10),allocatable::b03
character(k*5) b04
allocate(a02(2),b02)
allocate(a03(2),b03)
a01=repeat(char(0),10)
a02=repeat(char(0),10)
a03=repeat(char(0),10)
a04=repeat(char(0),10)
b01=repeat(char(0),10)
b02=repeat(char(0),10)
b03=repeat(char(0),10)
b04=repeat(char(0),10)
if (any(a01/=z0)) print *,3101
if (any(a02/=z0)) print *,3102
if (any(a03/=z0)) print *,3103
if (any(a04/=z0)) print *,3104
if (   (b01/=z0)) print *,3201
if (   (b02/=z0)) print *,3202
if (   (b03/=z0)) print *,3203
if (   (b04/=z0)) print *,3204
a01='x'
a02='x'
a03='x'
a04='x'
b01='x'
b02='x'
b03='x'
b04='x'
write(1,*)a01,a02,a03,a04,b01,b02,b03,b04
deallocate(a02,a03,b02,b03)
end
recursive subroutine s4(k)
type z
  integer::z1
end type
type(z) a01(2)
type(z),pointer     ::a02(:)
type(z),allocatable::a03(:)
type(z) a04(k)
type(z) b01
type(z),pointer     ::b02
type(z),allocatable::b03
allocate(a02(2),b02)
allocate(a03(2),b03)
a01%z1=0
a02%z1=0
a03%z1=0
a04%z1=0
b01%z1=0
b02%z1=0
b03%z1=0
if (any(a01%z1/=0)) print *,4101
if (any(a02%z1/=0)) print *,4102
if (any(a03%z1/=0)) print *,4103
if (any(a04%z1/=0)) print *,4104
if (   (b01%z1/=0)) print *,4201
if (   (b02%z1/=0)) print *,4202
if (   (b03%z1/=0)) print *,4203
a01%z1=-1
a02%z1=-1
a03%z1=-1
a04%z1=-1
b01%z1=-1
b02%z1=-1
b03%z1=-1
write(1,*)a01,a02,a03,a04,b01,b02,b03
deallocate(a02,a03,b02,b03)
end
call s1(2)
call s1(2)
call s1(2)
call s1(2)
call s2(2)
call s2(2)
call s2(2)
call s2(2)
call s3(2)
call s3(2)
call s3(2)
call s3(2)
call s4(2)
call s4(2)
call s4(2)
call s4(2)
print *,'pass'
end
