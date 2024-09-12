subroutine s1
type a
 integer :: a0
 character(:),pointer::a1
end type
type(a)::x
character*3,target::t='123'
character*4,target::w='abcd'
character(2),pointer::p1
character(:),pointer::p2
x= a(1,t)
if (x%a0/=1)print *,101,x%a0
if (len(x%a1)/=3)print *,102,len(x%a1)
if (x%a1/='123')print *,103,x%a1
x%a1=>w
if (len(x%a1)/=4)print *,202,len(x%a1)
if (x%a1/='abcd')print *,203,x%a1
p1=>w(3:4)
x= a(2,p1)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (x%a1/='cd')print *,303,x%a1
p2=>w(2:4)
x= a(3,p2)
if (x%a0/=3)print *,401,x%a0
if (len(x%a1)/=3)print *,402,len(x%a1)
if (x%a1/='bcd')print *,403,x%a1
end
call s1
print *,'pass'
end
