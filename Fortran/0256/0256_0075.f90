integer :: arr(5) = [1,2,3,4,5]
call sub_1(arr(1:5:2))
 if (any(arr/=[11,2,13,4,15])) print *,102,arr
contains
subroutine sub_1(pp)
integer :: pp(:)
call sub(pp)
print*,"pass"
end subroutine
subroutine sub(d)
integer,optional::d(:)
contiguous :: d
if(present(d))then      
if(is_contiguous(d).neqv..true.)print*,101
d = d+10
endif
end subroutine
end

