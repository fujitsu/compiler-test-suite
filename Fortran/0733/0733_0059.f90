  integer a(100,100),b(100,100),c(100,100)
  call cpu_time(x1)
  do k=1,1000
  do i=1,100
  do j=1,100
   b(i,j)=i*1000+j
   c(i,j)=i*1000+j
   a(i,j)=b(i,j)+c(i,j)
  end do
  end do
  end do
  call cpu_time(x2)
  write(51,*)x2-x1
  print *,'pass'
  end
