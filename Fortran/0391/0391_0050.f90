integer,pointer,contiguous::pt(:,:)
integer,pointer::pp(:)
allocate(pt(2,3))
pt=reshape([1,2,3,4,5,6],[2,3])
pp(1:6)=>pt
if (any(pp/=[1,2,3,4,5,6])) print *,'error'
print *,'pass'
end
