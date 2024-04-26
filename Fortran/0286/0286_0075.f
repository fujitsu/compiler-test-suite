	integer mx,mn
	do i=-3,3
	do j=-3,3
	if( max(i,j) .ne. mx(i,j) ) then
	print *,'NG1'
	endif
	if( min(i,j) .ne. mn(i,j) ) then
	print *,'NG2'
	endif
	end do
	end do
	print *,'PASS'
	end
	integer function mx(i,j)
	if( i .gt. j ) then
	mx = i
	else
	mx = j
	endif
	end
	integer function mn(i,j)
	if( i .lt. j ) then
	mn = i
	else
	mn = j
	endif
	end

