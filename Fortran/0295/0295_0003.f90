subroutine s1
implicit none
type ty1
   integer::age
   character(len=64)::name1='nameless'
end type
type(ty1)::p1
p1=ty1(age=21)
if (p1%age/=21)print *,1
if (p1%name1/='nameless')print *,2
end
call s1
print *,'pass'
end
