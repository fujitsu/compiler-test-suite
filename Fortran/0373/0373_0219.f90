  subroutine sub(a,b)
  real a(10,10),b(10,10)
  m=3
  do j=1,10
    b(j,1)=a(j,3)
    b(j,2)=a(j,m)
  enddo
  end

  real a(10,10),b(10,10)
  real c(10)
  do i=1,10
  do j=1,10
    a(j,i)=10*j+i
  end do
  end do
  call sub(a,b)
  c=b(:,1); print*,c
  c=b(:,2); print*,c
  end
