subroutine s1
integer,pointer::a(:)
integer,allocatable::b(:)
integer,target::c(4)=[0,1,2,3]
a=>c(2::2)
allocate(b,source=a+a)
if (any(shape(b)/=[2]))print *,401
if (any(lbound(b)/=[1]))print *,402,lbound(b)
if (any(ubound(b)/=[2]))print *,403,ubound(b)
if (size(b)/=2)print *,404
if (sizeof(b)/=2*4)print *,405
if (any(b/=[2,6]))print *,406,b(1),b(2)
end 
call s1
print *,'pass'
end
