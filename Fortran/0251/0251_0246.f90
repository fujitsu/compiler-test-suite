pointer::ptr(:,:)
integer::ii=2
call sub(ii)
contains
subroutine sub(d1)
integer::d1
block
target::tar(d1,d1,d1)
allocate(ptr(d1,d1))
  block
  pointer::ptr(:,:,:)
  ptr=>tar
  if(associated(ptr))then
  print*,"1:pass"
  end if
  if(SIZE(ptr)==8)print*,"2:pass"
  end block
if(associated(ptr))print*,"3:pass"  
if(SIZE(ptr)==4)print*,"4:pass"
end block
end subroutine
end
