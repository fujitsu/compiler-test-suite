  integer a(2)
  data a/2*2/
  do i=1,2
    if(i.ne.1) a(i)=1
  end do
  print*,a(1)
  end
