subroutine s1
integer,pointer::a(:)
integer,allocatable::b(:)
integer,target::c(4)=[0,1,2,3]
a=>c(2::2)
allocate(b,source=a)
if (any(b/=[1,3]))print *,101,b(1),b(2)
if (any(lbound(b)/=[1]))print *,202
end 
call s1
print *,'pass'
end
