subroutine s1
integer,target:: a(6)
integer,target:: b(2,3)
integer,pointer:: p(:,:)
b=reshape([1,2,3,4,5,6],[2,3])
a=reshape([1,2,3,4,5,6],[6])
p(1:3,1:2)=> a
if (any(shape(p)/=[3,2])) print *,101
if (any([p]/=[b])) print *,103
p(1:3,1:2)=> a
if (any(shape(p)/=[3,2])) print *,102
if (any([p]/=[b])) print *,104
end
call s1
print *,'pass'
end

