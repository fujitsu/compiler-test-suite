
program main
  real :: ra(-10:9)=(/1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1/)
  real :: rb(-10:9)=(/10,9,8,7,6,5,4,3,2,1,1,2,3,4,5,6,7,8,9,10/)
  real :: rc(-10:9)
  data rc/20*0/,inc/1/
  real(8),parameter :: ans1=99.0
  real(8) :: res1
  real(8),parameter :: ans2=242.0
  real(8) :: res2

  do i=-4,4,inc
    rc(i-inc)=rc(i)+ra(i)+rb(i)
  enddo
  
  res1=sum(rc)
  if(res1 .eq. ans1) then
    print *,"ok (1/2)"
  else
    print *,"ng (1/2)",res1,ans1
  endif 

      inc=-inc

  do i=3,-4,inc
   rc(i-inc)=rc(i)*rb(i)
  enddo

  res2=sum(rc)
  if(res2 .eq. ans2) then
    print *,"ok (2/2)"
  else
    print *,"ng (2/2)",res1,ans1
  endif

end program main
