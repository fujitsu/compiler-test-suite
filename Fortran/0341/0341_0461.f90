subroutine sub(a,b,c,n)
  integer,dimension(100,100) :: a,b,c
  integer :: n
  do k=1,n
     do j=1,n
        do i=1,n
           c(i,j)=i+j
        end do
     end do
     print *,"test"
     do l=1,n
        do j=1,n
           do i=1,n
              a(i,j) = b(j,l) + c(i,l) 
           end do
        end do
     end do
  end do
end subroutine sub

program main
  integer,dimension(100,100) :: a,b,c
  integer :: n
  integer :: ans1,ans2
  integer :: res1,res2
  ans1=1650
  ans2=20900
  a=0
  b=1
  c=2
  n=10
  call sub(a,b,c,n)
  
  res1=sum(a)
  res2=sum(c)

  if(res1 == ans1) then 
     print *,"ok1"
  else
     print *,"ng2",res1
  end if

  if(res2 == ans2) then 
     print *,"ok2"
  else
     print *,"ng2",res2
  end if

end program main
