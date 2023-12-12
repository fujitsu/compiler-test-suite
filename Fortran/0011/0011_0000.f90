subroutine s1
integer,parameter::c(*,*)=reshape([1,2,3,4,5,6],[2,3])
integer,target:: a(4,3)
integer,pointer:: p(:,:)
integer:: b(6)
a(::2,:)=c
p=> a(::2,:)
b=[ p ]
if (any(b/=[1,2,3,4,5,6])) print *,101
if (any([a(::2,:)]/=[1,2,3,4,5,6])) print *,102
if (size([a(::2,:)])/=6) print *,103
end
call s1
print *,'OK'
end

