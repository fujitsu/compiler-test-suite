subroutine s1
type a
 integer :: a0
 character(:),pointer::a1
end type
type(a)::x
character*4,target::w='abcd'
type xx
integer p0
character(2),pointer::p1
character(:),pointer::p2
end type
type(xx)::d(2)
d(2)%p1=>w(3:4)
x= a(2,d(2)%p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (x%a1/='cd')print *,303,x%a1
x= a(3,w(2:4))
if (x%a0/=3)print *,401,x%a0
if (len(x%a1)/=3)print *,402,len(x%a1)
if (x%a1/='bcd')print *,303,x%a1
i4=4
d(2)%p2=>w(3:i4)
if (len(d(2)%p2)/=2)print *,500,len(x%a1)
x= a(4,d(2)%p2)
if (x%a0/=4)print *,501,x%a0
if (len(x%a1)/=2)print *,502,len(x%a1)
if (x%a1/='cd')print *,303,x%a1
end
call s1
print *,'pass'
end
