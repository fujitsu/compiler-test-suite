integer :: arr(10)
call sub_1(arr(1:10:2))
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
endif
end subroutine
end

