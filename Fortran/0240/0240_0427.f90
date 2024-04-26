call s
print *,'pass'
end
subroutine s
integer,target,dimension(5)::target
integer,pointer,dimension(:)::ptr
logical::flag
ptr => target
flag = is_contiguous(ptr)
if(flag.neqv..true.) print *,'err'
ptr => target(1:5:2)
flag = is_contiguous(ptr)
if(flag.neqv..false.) print *,'err'
end
