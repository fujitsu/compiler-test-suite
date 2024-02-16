integer::ii=10
integer::res =0
block
integer::arr(ii)
  block
  arr(4)=10
  associate(aa=>arr(4))
  open(NEWUNIT=aa,STATUS='SCRATCH')
  write(aa,*)2016
  rewind(aa)
  read(aa,*)res
  end associate
  end block
end block
if (res/=2016)print*,101
print*,"pass"
end
