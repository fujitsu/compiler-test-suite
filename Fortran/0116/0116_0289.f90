program main
  real(8) :: a(10),b(10),c(0:9)
  integer :: x1,x2,x3
  real(8) :: result
  real(8),parameter :: answer1=166.0
  real(8),parameter :: answer2=825.0

  j=10
  do i=1,10
    a(i)=i
    b(j)=j
    j=j-1
    c(j)=j
  enddo

  print *, ' *** 1 ***'
  result = sum(a) +sum(b)
  result = result + sum(c) +i
  if ( answer1 .eq. result) then
     print *,"ok :",result
  else
     print *,"ng :",result,answer1
  endif

  do i=1,10
    c(j)=a(i)*b(i)
    j=j+1
    a(i)=c(j-1)
  enddo

  print *,' *** 2 ***'
  result = 0.0
  result = sum(a) + sum(b)
  result = result + sum(c) 
  if ( answer2 .eq. result) then
     print *,"ok :",result
  else
     print *,"ng :",result,answer2
  endif 

end program main
