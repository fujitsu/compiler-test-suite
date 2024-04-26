	common /com/s1,s2,s3
	real s1;integer s2;complex s3
	call test1
	call test2
	call test3
	if( s1 .eq.0 .or. s1 .eq. 1000 ) then 
	  print *,'OK1'
	else
	  print *,'NG1'
	endif
	if( s2 .eq.0 .or. s2 .eq. 1000 ) then 
	  print *,'OK2'
	else
	  print *,'NG2'
	endif
	if( s3 .eq.0 .or. s3 .eq. 1000 ) then 
	  print *,'OK3'
	else
	  print *,'NG3'
	endif
	end
	subroutine test1
	implicit none
	common /com/s1,s2,s3
	real s1;integer s2;complex s3
	integer i
	real a,b,tmp
	dimension a(1000),b(1000)
	a = (/(i,i=1,1000)/)
	tmp = 10

	do i=1,1000
	  tmp = a(i)
	  b(i) = tmp
	enddo
	if( sum(b) /= sum(a) ) print *,' NG '
	s1=tmp
	end 
	subroutine test2
	implicit none
	common /com/s1,s2,s3
	real s1;integer s2;complex s3
	integer i
	integer a,b,tmp
	dimension a(1000),b(1000)
	a = (/(i,i=1,1000)/)
	tmp = 10

	do i=1,1000
	  tmp = a(i)
	  b(i) = tmp
	enddo
	if( sum(b) /= sum(a) ) print *,' NG '
	s2 = tmp
	end 
	subroutine test3
	implicit none
	common /com/s1,s2,s3
	real s1;integer s2;complex s3
	integer i
	complex a,b,tmp
	dimension a(1000),b(1000)
	a = (/(i,i=1,1000)/)
	tmp = 10

	do i=1,1000
	  tmp = a(i)
	  b(i) = tmp
	enddo
	if( sum(b) /= sum(a) ) print *,' NG '
	s3 = tmp
	end 
