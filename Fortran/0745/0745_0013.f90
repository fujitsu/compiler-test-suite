  type x1
  integer i
  end type
  type(x1)::xx2(2)
  xx2(2)%i=1
  write(1,*)xx2(2)
  rewind 1
  read(1,*) j
  if (j/=1)print *,'error'
  print *,'pass'
  end
