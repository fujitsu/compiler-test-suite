subroutine s4
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
end
subroutine s41
type a
 integer :: a0
 character(2),allocatable::a1(:)
end type
type(a)::x
 character(2),allocatable::p1(:)
allocate(character(2)::p1(2))
p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
end
subroutine s3
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type aa
 integer :: a0
 character(2),allocatable::p1
end type 
type (aa) :: v(2)
allocate(character(2)::v(2)%p1)
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
subroutine s31
type a
 integer :: a0
 character(2),allocatable::a1(:)
end type
type(a)::x
type aa
 integer :: a0
 character(2),allocatable::p1(:)
end type 
type (aa) :: v(2)
allocate(character(2)::v(2)%p1(2))
v(2)%p1='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
x= a(2,v(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
end
subroutine s2
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
x= a(2,p1())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
contains
 function p1() result(r)
 character(2),allocatable::r
 allocate(character(2)::r)
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
subroutine s21
type a
 integer :: a0
 character(2),allocatable::a1(:)
end type
type(a)::x
x= a(2,p1())
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (any(x%a1/='cd'))print *,303,x%a1
contains
 function p1() result(r)
 character(2),allocatable::r(:)
 allocate(character(2)::r(2))
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
call s4
call s41
call s3
call s31
call s2
call s21
print *,'pass'
end
