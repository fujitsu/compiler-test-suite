  class(*),allocatable:: aa(:) 
  character(len=3) :: ch1(3),ch2(3)
  ch1='abc'
  ch2='xyz'
  
  aa=ch1(:)(:1) 
  aa=ch2(:)(:2)
  select type(aa)
  type is(character(*))
     if(len(aa) .ne. 2)print*,"err",len(aa)
     if(aa(1)//"1"/="xy1") print*,"err1"
     if(aa(2)//"1"/="xy1") print*,"err2"
     if(aa(3)//"1"/="xy1") print*,"err3"
  end select

  aa=ch2(:)(:1)
  aa=ch1(:)(2:) 
  select type(aa)
  type is(character(*))
     if(len(aa) .ne. 2)print*,"err",len(aa)
     if(aa(1)//"1"/="bc1") print*,"err1"
     if(aa(2)//"1"/="bc1") print*,"err2"
     if(aa(3)//"1"/="bc1") print*,"err3"
  end select

  aa=ch1(:)(:1) 
  aa=ch2(:)(:2)
  select type(zz=>aa)
  type is(character(*))
     if(len(zz) .ne. 2)print*,"err",len(zz)
     if(zz(1)//"1"/="xy1") print*,"err1"
     if(zz(2)//"1"/="xy1") print*,"err2"
     if(zz(3)//"1"/="xy1") print*,"err3"
  end select
  
  aa=ch2(:)(:1)
  aa=ch1(:)(2:) 
  select type(yy=>aa)
  type is(character(*))
     if(len(yy) .ne. 2)print*,"err",len(yy)
     if(yy(1)//"1"/="bc1") print*,"err1"
     if(yy(2)//"1"/="bc1") print*,"err2"
     if(yy(3)//"1"/="bc1") print*,"err3"
  end select

  
  print*,"pass"
end program

