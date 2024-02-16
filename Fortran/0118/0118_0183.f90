integer,target, dimension (5) ::target
integer,pointer, dimension (:)::ptr
logical:: flag
ptr=>target
flag = is_contiguous(ptr)
print *,flag
ptr=>target(1:5:2)
flag = is_contiguous(ptr)
print *,flag
end
