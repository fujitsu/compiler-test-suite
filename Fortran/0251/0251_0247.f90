pointer::ptr(:,:)
allocatable::alc(:)
call sub1(2)
call sub2(3)
if(allocated(alc))print*,"3:pass"
if(associated(ptr))print*,"4:pass"
contains
subroutine sub1(d1)
integer::d1
block
target::tar(d1,d1,d1)
  block
  pointer::ptr(:,:,:)
  ptr=>tar
  if(associated(ptr))print*,"1:pass"
  end block
allocate(alc(d1))
end block
end subroutine

subroutine sub2(d1)
integer::d1
  target::tar(3,4)
save::tar
block
  block
  target::tar(d1,d1)
  ptr=>tar
  if(associated(ptr))print*,"2:pass"
  end block
end block
  ptr=>tar
end subroutine
end
