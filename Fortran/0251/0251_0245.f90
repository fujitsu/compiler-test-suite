integer::ii=2
block
integer::ii=4
pointer::ptr(:)
allocate(ptr(ii))
if(associated(ptr))print*,"1:pass"
if(SIZE(ptr)==4)print*,"2:pass"
end block
end
