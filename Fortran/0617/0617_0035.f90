subroutine s
 parameter(k2=2)
type aa
 integer :: a0
 character(:),allocatable::p1
end type 
type aaa
 integer :: a0
 character(:),allocatable::p1(:,:,:)
end type 
call s4
call s41
call s3
call s31
call s3x
call s31x
call s2
call s21
contains
subroutine s4()
type a
 integer :: a0
 character(k2),allocatable::a1
end type
type(a)::x
 character(:),allocatable::p1
allocate(character(2)::p1)
p1(:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s41()
type a
 integer :: a0
 character(k2),allocatable::a1(:,:,:)
end type
type(a)::x
 character(:),allocatable::p1(:,:,:)
allocate(character(2)::p1(2,1,3))
p1(:,:,:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s3
type a
 integer :: a0
 character(k2),allocatable::a1
end type
type(a)::x
type (aa),pointer :: v(:)
allocate(v(2))
i2=-3
allocate(character(2)::v(2)%p1)
v(2)%p1(:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(i2+5)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s31
type a
 integer :: a0
 character(k2),allocatable::a1(:,:,:)
end type
type(a)::x
type (aaa),pointer :: v(:)
allocate(v(2))
i2=-3
allocate(character(2)::v(2)%p1(2,1,3))
v(2)%p1(:,:,:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(i2+5)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s3x()
type a
 integer :: a0
 character(k2),allocatable::a1
end type
type(a)::x
type (aa),pointer :: v(:)
allocate(v(2))
allocate(character(2)::v(2)%p1)
v(2)%p1(:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
subroutine s31x()
type a
 integer :: a0
 character(k2),allocatable::a1(:,:,:)
end type
type(a)::x
type (aaa),pointer :: v(:)
allocate(v(2))
allocate(character(2)::v(2)%p1(2,1,3))
v(2)%p1(:,:,:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
subroutine s2
type a
 integer :: a0
 character(k2),allocatable::a1
end type
type(a)::x
x= a(2,p1f())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end subroutine
 function p1f() result(r)
 character(:),allocatable::r
 allocate(character(2)::r)
 r(:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
subroutine s21
type a
 integer :: a0
 character(k2),allocatable::a1(:,:,:)
end type
type(a)::x
x= a(2,p1af())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
if (any(ubound(x%a1)/=[2,1,3]))print *,305,x%a1
end subroutine
 function p1af() result(r)
 character(:),allocatable::r(:,:,:)
 allocate(character(2)::r(2,1,3))
 r(:,:,:)='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
call s
print *,'pass'
end

