subroutine s4
type a
 integer :: a0
 character(1),allocatable::a1
 character(20000),allocatable::a2
end type
type(a)::x
 character(300000),allocatable::p1
 character(1)::aa='a'
allocate(p1)
p1='cde'
x= a(2,p1,aa)
if (x%a0/=2)print *,301,x%a0
if (len(x%a1)/=1)print *,302,len(x%a1)
if (   (x%a1/='c'))print *,303,x%a1
if (len(x%a2)/=20000)print *,304,len(x%a1)
if (   (x%a2/='a'))print *,305,x%a1
end
call s4
print *,'pass'
end
