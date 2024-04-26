subroutine sub(a,b,c,n)
  integer,dimension(100,100) :: a,b,c
  integer :: n
  do k=1,n
     do j=1,n
        do i=1,n
           a(i,j) = b(j,k) + c(i,k)
        end do
     end do
  end do
end subroutine sub

program main
  integer,dimension(100,100) :: a,b,c
  integer :: n
  integer :: ans1,res1
  ans1=30000
  b=1
  c=2
  n=100

  call sub(a,b,c,n)

  res1=sum(a)

  if(res1 == ans1) then
     print *,"ok"
  else
     print *,"ng",res1
  end if

end program main
