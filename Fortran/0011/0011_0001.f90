subroutine s1
integer,parameter::c(*,*)=reshape([1,2,3,4,5,6],[2,3])
integer,target:: a(4,3)
integer:: b(6)
a(::2,:)=c
b=[ p(a) ]
if (any(b/=[1,2,3,4,5,6])) print *,101
if (any([p(a)]/=[1,2,3,4,5,6])) print *,102
if (size([p(a)])/=6) print *,103, size([p(a)])
contains
function p(t)
integer,pointer::p(:,:)
integer,target:: t(:,:)
p=> t(::2,:)
end function
end
call s1
print *,'OK'
end

