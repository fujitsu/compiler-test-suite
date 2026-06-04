integer,target::a(5,1)=reshape([1,2,3,4,5],[5,1])
k=1
call s(a(:,k))
print *,'pass'
contains
subroutine s(x)
integer,contiguous,pointer,intent(in)::x(:)
if (any(x/=[1,2,3,4,5])) print *,102,x
end subroutine
end
