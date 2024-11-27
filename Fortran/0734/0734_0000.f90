  subroutine sub
  common /xx/i4,i8,i7,i3
  integer ::a(5,5)=reshape((/(i,i=1,25)/),(/5,5/))
  real ::b(100)=(/(-i,i=1,100)/)
  integer ::x(2)=(/5,0/)
  if (any(shape(reshape(b,x))/=(/5,0/)))print *,'error-2'
  a(i4:i8,i7:i3)=reshape(b,x)
  if (any((/a/)/=(/(i,i=1,25)/)))print *,'error'
  print *,'pass'
  end
  common /xx/i4,i8,i7,i3
  i4=4;i8=8;i7=7;i3=3
  call sub
  end
