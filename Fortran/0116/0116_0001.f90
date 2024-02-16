  program main
  real(8) :: a(10),b(10,10)
  integer :: n
  real(8) :: result

  real(8),parameter :: ANSWER=100.0

  n=10
  a=0
  b=1
  
  do j=1,n
    do i=1,n
      a(i) = b(i,j)+a(i)
    enddo
  enddo

  result = sum(a)

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

  end
