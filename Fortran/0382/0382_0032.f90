integer::q(6)
q(2::2)=[1,2,3]
call s1(q(2::2))
print *,'pass'
contains
subroutine s1(qq)
integer::qq(:)
integer,allocatable::b(:)
allocate(b,source=qq)
if (any([b]/=[1,2,3]))print *,16101,b
if (any(lbound(b)/=[1]))print *,16102
end subroutine
end 
