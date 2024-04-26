pointer::ptr
ptr=>null()
block
integer::ptr
integer::tar
  block
  pointer::ptr
  target::tar
  allocate(ptr)
  if(associated(ptr))print*,"1:pass"
  end block
end block
if(associated(ptr))then
print*,"error"
else
print*,"2:pass"
end if
end
  
