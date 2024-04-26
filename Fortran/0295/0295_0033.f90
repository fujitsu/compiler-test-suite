subroutine s1
type x
  integer::z(10000)
end type
type y
  integer::z
end type
type w
  integer::z=1
end type
type(x),allocatable::v1(:)
type(y),allocatable::v2(:)
type(w),allocatable::v3(:)
type(x),allocatable::v4(:)

allocate(v1(1000),v2(1),v3(1),v4(1000))
if (v3(1)%z/=1)print *,101
end
subroutine s2
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
type(x),allocatable::v1(:)
type(y),allocatable::v2(:)
type(w),allocatable::v3(:)
type(x),allocatable::v4(:)

allocate(v1(1000),v2(1),v3(1),v4(1000))
if (v3(1)%z/=1)print *,101
if (allocated(v1(1)%q))print *,201
if (allocated(v2(1)%q))print *,202
if (allocated(v3(1)%q))print *,203
if (allocated(v4(1)%q))print *,204
end
subroutine s3
type x
  integer::z(10000)
end type
type y
  integer::z
end type
type w
  integer::z=1
end type
type(x),allocatable::v1
type(y),allocatable::v2
type(w),allocatable::v3
type(x),allocatable::v4

allocate(v1,v2,v3,v4)
if (v3%z/=1)print *,101
end
subroutine s4
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
type(x),allocatable::v1
type(y),allocatable::v2
type(w),allocatable::v3
type(x),allocatable::v4

allocate(v1,v2,v3,v4)
if (v3%z/=1)print *,101
if (allocated(v1%q))print *,201
if (allocated(v2%q))print *,202
if (allocated(v3%q))print *,203
if (allocated(v4%q))print *,204
end
subroutine t1
character(10000),allocatable::v1(:)
character(1    ),allocatable::v2(:)
character(1    ),allocatable::v3(:)
character(10000),allocatable::v4(:)
allocate(v1(1000),v2(1),v3(1),v4(1000))
end
subroutine t2
character(10000),allocatable::v1
character(1    ),allocatable::v2
character(1    ),allocatable::v3
character(10000),allocatable::v4
allocate(v1,v2,v3,v4)
end
call s1
call s2
call s3
call s4
call t1
call t2
print *,'pass'
end
