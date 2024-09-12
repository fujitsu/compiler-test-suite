subroutine s1
integer,target, dimension (5) ::target
integer,pointer, dimension (:)::ptr
logical:: flag
ptr=>target
flag = is_contiguous(ptr)
if (.not.flag) print *,101
ptr=>target(1:5:2)
flag = is_contiguous(ptr)
if (flag) print *,102
end
call s1
print *,'pass'
end


