program main
  parameter(n=10)
  real*8 a(n),b(n,n),c(n,n)
  integer :: ans1,ans2
  integer :: res1,res2
  ans1=55
  ans2=7000
  b=0
  c=7

  do k=1,n
     a(k)=k
     do j=1,n
        do i=1,n
           b(i,j)=b(i,j)+c(i,j)
        end do
     enddo
  enddo


  res1=sum(a)
  res2=sum(b)

  if(res1 == ans1) then
     print *,"ok1"
  else
     print *,"ng1",res1
  end if

  if(res2 == ans2) then
     print *,"ok2"
  else
     print *,"ng2",res2
  end if

end program main
