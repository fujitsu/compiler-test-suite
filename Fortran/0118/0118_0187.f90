integer,target, dimension (0) ::target
integer,pointer, dimension (:)::ptr
logical:: flag
ptr=>target
flag = is_contiguous(ptr)
print *,flag
end
