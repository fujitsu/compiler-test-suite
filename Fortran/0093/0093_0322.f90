  complex:: bb(2,3:6)
  complex,allocatable :: cc(:,:)

  if(any(shape(bb%re) .ne. [2,4])) print*,"121"
  if(any(lbound(bb%re) .ne. [1,1])) print*,"122"
  if(any(ubound(bb%im) .ne. [2,4])) print*,"123"
  if(size(bb%im) .ne. 8) print*,"124"
  if(sizeof(bb%im) .ne. 32) print*,"125"

  allocate(cc(2,3:6))
  if(any(shape(cc%re) .ne. [2,4])) print*,"221"
  if(any(lbound(cc%re) .ne. [1,1])) print*,"222"
  if(any(ubound(cc%im) .ne. [2,4])) print*,"223"
  if(size(cc%im) .ne. 8) print*,"224"
  if(sizeof(cc%im) .ne. 32) print*,"225"
  print*,"Pass"

end
