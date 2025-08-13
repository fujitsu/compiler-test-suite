  type x1
  integer i
  end type
  type(x1)::xx2(2)
  xx2(2)%i=1
  write(10,*)xx2(2)
  rewind 10
  read(10,*) j
  if (j/=1)print *,'error'
  print *,'pass'
  end
