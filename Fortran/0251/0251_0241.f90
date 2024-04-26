pointer::ptr
target::tar
ptr=>NULL()
tar=2.5
block
pointer::ptr
ptr=>tar
if(associated(ptr))print*,"Pass"
end block
if(associated(ptr))then
print*,"error"
else
print*,"pass"
end if
end
