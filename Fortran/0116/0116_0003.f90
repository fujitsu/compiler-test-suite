
program main
  real(8) :: b(20),c(20)

  real(8) :: result
  real(8),parameter :: ANSWER=98.0

  data  b,c/20*1.,20*5./,n/20/

  call  jnd238(b,c,n)

  result = sum(c)

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

end program main

subroutine jnd238(b,c,n)
  real(8) :: b(n),c(n),l(20)
  data l/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/

  do j=2,n-3
    n1=l(j) 
    b(n1)=3	
    c(2)=b(n1-1)
  enddo

end subroutine jnd238











