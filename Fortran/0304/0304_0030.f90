subroutine sub (cond)
  integer :: cond
  real,dimension(100,100) :: b,a
  integer :: i,j
  real :: ans1,ans2
  real :: res1,res2
  ans1=2040000.0
  ans2=1525000.0
  a=2
  b=1

  do j=1,100

     do i=1,100
        b(i,j) = b(i,j) +j
     end do

     do i=1,100
        b(i,j) = b(i,j) +j
        if (cond > 0.0) then
           a(i,j) = 2.0 * b(i,j)
        end if
     end do

     do i=1,100
        b(i,j) = b(i,j) +j
     end do

  end do

  res1=sum(a)
  res2=sum(b)
  if(ans1 == res1) then
     print *,"ok1"
  else
     print *,"ng1 ",res1
  end if
  if(ans2 == res2) then
     print *,"ok2"
  else
     print *,"ng2 ",res2
  end if

end subroutine sub

program main
  integer :: xxx
  xxx = 1
  call sub(xxx)
end program main
