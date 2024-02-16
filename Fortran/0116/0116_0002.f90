  program main
  real(8) :: a(10,10)
  integer :: n1,n2
  real(8) :: result
	
  real(8),parameter :: ANSWER=30.0
  data a/100*0/

  n1=10
  n2=10

  do j=1,n1
    do i=j,n2
      a(1,i)=1 
      a(2,i)=2
    enddo
  enddo

  result = sum(a)

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

  end

