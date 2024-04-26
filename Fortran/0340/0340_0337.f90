subroutine sub (cond)
  integer :: cond
  real,dimension(100,100) :: b,a
  integer :: i,j,k,counter
  real :: ans1,ans2
  real :: res1,res2
  counter = 0
  ans1=0.0
  ans2=0.0
  a=2
  b=1
  
  do j=1,100
777  continue
     counter = counter+1
     do i=1,100
        b(i,j) = b(i,j) +j
        if (cond > 0.0) then
           a(i,j) = 2.0 * b(i,j)
        end if
     end do
     if(counter < 2 ) then
        goto 777
     end if
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
