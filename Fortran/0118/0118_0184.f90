integer,target, dimension (5,5) ::target
integer,pointer, dimension (:,:)::ptr
logical:: flag
ptr=>target
flag = is_contiguous(ptr)
print *,flag
ptr=>target(1:5:2,1:5:2)
flag = is_contiguous(ptr)
print *,flag
ptr=>target(1:5:1,1:5:2)
flag = is_contiguous(ptr)
print *,flag
ptr=>target(1:5:2,1:5:1)
flag = is_contiguous(ptr)
print *,flag
ptr=>target(1:5:1,1:5:1)
flag = is_contiguous(ptr)
print *,flag
end
