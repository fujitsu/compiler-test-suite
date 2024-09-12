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
call s21
print *,'pass'
end
