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
 character(:),allocatable::r
 allocate(character(20000)::r)
 r='cdefgxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
 end function
end
call s2
print *,'pass'
end
