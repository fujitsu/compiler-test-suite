subroutine s1
type a
 integer :: a0
 character(:),pointer::a1
end type
type(a)::x
character*4,target::w='abcd'
x= a(2,p1(w(3:4)))
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=2)print *,302,len(x%a1)
if (x%a1/='cd')print *,303,x%a1
x= a(3,p2(w(2:4)))
if (x%a0/=3)print *,401,x%a0
if (len(x%a1)/=3)print *,402,len(x%a1)
if (x%a1/='bcd')print *,303,x%a1
i4=4
if (len(p2(w(3:i4)))/=2)print *,500,len(x%a1)
x= a(4,p2(w(3:i4)))
if (x%a0/=4)print *,501,x%a0
if (len(x%a1)/=2)print *,502,len(x%a1)
if (x%a1/='cd')print *,303,x%a1
x= a(2,p3(w(3:4),2))
if (x%a0/=2)print *,601,x%a0
if (len(x%a1)/=2)print *,602,len(x%a1)
if (x%a1/='cd')print *,603,x%a1
contains
function p1(w) result(r)
character(*),target::w
character(2),pointer::r
r=>w
end function
function p2(w) result(r)
character(*),target::w
character(:),pointer::r
r=>w
end function
function p3(w,i) result(r)
character(*),target::w
character(i),pointer::r
r=>w
end function
end
call s1
print *,'pass'
end
