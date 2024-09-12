subroutine s
 character(2),allocatable::p1
 character(2),allocatable::p1a(:,:,:)
type aa
 integer :: a0
 character(2),allocatable::p1
end type 
type aaa
 integer :: a0
 character(2),allocatable::p1(:,:,:)
end type 
type(aa)::v(2),vx(2)
type(aaa)::va(2),vxa(2)
call s4(p1)
call s41(p1a)
call s3(v)
call s31(va)
call s3x(vx)
call s31x(vxa)
call s2
call s21
contains
subroutine s4(p1)
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
 character(2),allocatable::p1
allocate(character(2)::p1)
p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s41(p1)
type a
 integer :: a0
 character(2),allocatable::a1(:,:,:)
end type
type(a)::x
 character(2),allocatable::p1(:,:,:)
allocate(character(2)::p1(2,1,3))
p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s3(v)
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type (aa) :: v(:)
i2=-3
allocate(character(2)::v(2)%p1)
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(i2+5)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s31(v)
type a
 integer :: a0
 character(2),allocatable::a1(:,:,:)
end type
type(a)::x
type (aaa) :: v(:)
i2=-3
allocate(character(2)::v(2)%p1(2,1,3))
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(i2+5)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s3x(v)
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type (aa) :: v(:)
allocate(character(2)::v(2)%p1)
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s31x(v)
type a
 integer :: a0
 character(2),allocatable::a1(:,:,:)
end type
type(a)::x
type (aaa) :: v(:)
allocate(character(2)::v(2)%p1(2,1,3))
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s2
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
x= a(2,p1f())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
 function p1f() result(r)
 character(2),allocatable::r
 allocate(character(2)::r)
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
subroutine s21
type a
 integer :: a0
 character(2),allocatable::a1(:,:,:)
end type
type(a)::x
x= a(2,p1af())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
 function p1af() result(r)
 character(2),allocatable::r(:,:,:)
 allocate(character(2)::r(2,1,3))
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
call s
print *,'pass'
end
