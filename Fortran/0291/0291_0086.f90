	program main
	real,dimension(:,:),target,allocatable:: r1
	real,dimension(:,:),pointer:: p1
	allocate( r1(10,10) ) 
	p1 => r1
	do i=1,10
	  r1(i,:) = 2
	end do
	if( sum(r1) .eq. 2*10*10 ) then
	else
	  print *,' NG (1)'
	endif
	if( .not.all(p1==r1) ) then
	  print *,' NG (2)'
	else
	endif
	p1(5,5) = 3
	p1(10,10) = 1
	if( maxval(p1) /= 3  ) then
	  print *,' NG (3)'
	else
	endif
	if( minval(r1) == 1 ) then
	else
	  print *,' NG (4)'
	endif
	if( count(r1(5,:)==(/3,3,3,3,3,3,3,3,3,3/)) == 1 ) then
	else
	  print *,' NG (5)'
	endif
	if( count(r1(:,10)==(/2,2,2,2,2,2,2,2,2,1/)) == 1 ) then
	  print *,' NG (6)'
	endif
	print *,' PASS '
	end
