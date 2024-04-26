subroutine sub(a,b,c,n)
  integer,dimension(100) :: a,b,c
  integer :: n
  do i=1,n
     a(i) = b(i) + c(i)
  end do
end subroutine sub

program main
  integer,dimension(100) :: a,b,c
  integer :: n
  integer :: ans1,res1
  ans1=300
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
