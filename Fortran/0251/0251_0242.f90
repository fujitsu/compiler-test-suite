pointer::ptr
target::tar
ptr=>null()
tar=2.5
call sub
contains
subroutine sub
block
pointer::ptr
ptr=>tar
if(associated(ptr))print*,"pass"
end block
if(associated(ptr))then
print*,"error"
else
print*,"pass"
end if
end subroutine
end
