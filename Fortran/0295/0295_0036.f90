subroutine s1(n)
type x
  integer::z(10000)
end type
type y
  integer::z
end type
type w
  integer::z=1
end type
type(x),pointer::v1(:)
type(y),pointer::v2(:)
type(w),pointer::v3(:)
type(x),pointer::v4(:)
save

if (n==1) then
allocate(v1(1000),v2(1),v3(1),v4(1000))
endif
if (n==2) then
v1%z(1)=1
v2%z=1
v4%z(1)=1
endif
if (n==3) then
if (any(v1%z(1)/=1))print *,301
if (any(v2%z/=1))print *,302
if (any(v3%z/=1))print *,303
if (any(v4%z(1)/=1))print *,304
endif
if (v3(1)%z/=1)print *,101
end
subroutine s2(n)
save
type x
  integer::z(10000)
  integer,allocatable::q(:)
end type
type y
  integer::z
  integer,allocatable::q(:)
end type
type w
  integer::z=1
  integer,allocatable::q(:)
end type
type(x),pointer::v1(:)
type(y),pointer::v2(:)
type(w),pointer::v3(:)
type(x),pointer::v4(:)

if (n==1) then
allocate(v1(1000),v2(1),v3(1),v4(1000))
endif
if (n==2) then
v1%z(1)=1
v2%z=1
v4%z(1)=1
endif
if (n==3) then
if (any(v1%z(1)/=1))print *,301
if (any(v2%z/=1))print *,302
if (any(v3%z/=1))print *,303
if (any(v4%z(1)/=1))print *,304
endif
if (v3(1)%z/=1)print *,101
if (allocated(v1(1)%q))print *,201
if (allocated(v2(1)%q))print *,202
if (allocated(v3(1)%q))print *,203
if (allocated(v4(1)%q))print *,204
end
subroutine s3(n)
save
type x
  integer::z(10000)
end type
type y
  integer::z
end type
type w
  integer::z=1
end type
type(x),pointer::v1
type(y),pointer::v2
type(w),pointer::v3
type(x),pointer::v4

if (n==1) then
allocate(v1,v2,v3,v4)
endif
if (n==2) then
v1%z=1
v2%z=1
v4%z=1
endif
if (n==3) then
if (any(v1%z/=1))print *,301
if (   (v2%z/=1))print *,302
if (   (v3%z/=1))print *,303
if (any(v4%z/=1))print *,304
endif
if (v3%z/=1)print *,101
end
subroutine s4(n)
save
type x
  integer::z(10000)
  integer,allocatable::q(:)
end type
type y
  integer::z
  integer,allocatable::q(:)
end type
type w
  integer::z=1
  integer,allocatable::q(:)
end type
type(x),pointer::v1
type(y),pointer::v2
type(w),pointer::v3
type(x),pointer::v4

if (n==1) then
allocate(v1,v2,v3,v4)
endif
if (n==2) then
v1%z=1
v2%z=1
v4%z=1
endif
if (n==3) then
if (any(v1%z/=1))print *,301
if (   (v2%z/=1))print *,302
if (   (v3%z/=1))print *,303
if (any(v4%z/=1))print *,304
endif
if (v3%z/=1)print *,101
if (allocated(v1%q))print *,201
if (allocated(v2%q))print *,202
if (allocated(v3%q))print *,203
if (allocated(v4%q))print *,204
end
subroutine t1(n)
save
character(10000),pointer::v1(:)
character(1    ),pointer::v2(:)
character(1    ),pointer::v3(:)
character(10000),pointer::v4(:)
if (n==1) then
allocate(v1(1000),v2(1),v3(1),v4(1000))
endif
if (n==2) then
v1='1'
v2='1'
v3='1'
v4='1'
endif
if (n==3) then
if (any(v1/='1'))print *,301
if (any(v2/='1'))print *,302
if (any(v3/='1'))print *,303
if (any(v4/='1'))print *,304
endif
end
subroutine t2(n)
save
character(10000),allocatable::v1
character(1    ),allocatable::v2
character(1    ),allocatable::v3
character(10000),allocatable::v4
if (n==1) then
allocate(v1,v2,v3,v4)
endif
if (n==2) then
v1='1'
v2='1'
v3='1'
v4='1'
endif
if (n==3) then
if (   (v1/='1'))print *,301
if (   (v2/='1'))print *,302
if (   (v3/='1'))print *,303
if (   (v4/='1'))print *,304
endif
end
do i=1,3
call s1(i)
call s2(i)
call s3(i)
call s4(i)
call t1(i)
call t2(i)
end do
print *,'pass'
end
