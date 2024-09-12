subroutine s1
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
 character(2),allocatable::p1
 character(2),allocatable::p2(:)
allocate(p1)
p1='cd'
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
allocate(p2(2))
p2=['cd','cd']
x= a(2,p2(2))
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
subroutine s2
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type y
 character(2),allocatable::p1
 character(2),allocatable::p2(:)
end type
type(y)::d(2)
allocate(d(2)%p1)
d(2)%p1='cd'
x= a(2,d(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
allocate(d(2)%p2(2))
d(2)%p2=['cd','cd']
x= a(2,d(2)%p2(2))
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
subroutine s3
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type y
 character(2),allocatable::p1
 character(2),allocatable::p2(:)
end type
type(y)::d(2)
allocate(character(2)::d(2)%p1)
d(2)%p1='cd'
x= a(2,d(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
allocate(character(2)::d(2)%p2(2))
d(2)%p2=['cd','cd']
x= a(2,d(2)%p2(2))
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
subroutine s4
type a
 integer :: a0
 character(2),allocatable::a1
end type
type(a)::x
type y
 character(2),allocatable::p1
 character(2),allocatable::p2(:)
end type
type(y)::d(2)
allocate(character(2)::d(2)%p1)
d(2)%p1='cd'
x= a(2,d(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
allocate(character(2)::d(2)%p2(2))
d(2)%p2=['cd','cd']
x= a(2,d(2)%p2(2))
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (   (x%a1/='cd'))print *,303,x%a1
end
call s1
call s2
call s3
call s4
print *,'pass'
end
