!
	module mod
	implicit none
	integer*8,parameter:: isize = z'100000'
	end 
!
	subroutine test
	use mod
	implicit none
	integer*1,target:: area(isize) = 0
	integer*1,pointer:: array(:)
	array => area
	call sub(array, isize)
	if( array(1) .ne. 1 )     print *,'fail'
	if( array(isize) .ne. 2 ) print *,'fail'
        if( (loc(array(isize+1))-loc(array(1))) .ne. isize ) print *,'fail'
	print *,'PASS'
	end
!
	subroutine sub(array,n)
	use mod
	implicit none
	integer*8 :: n
	integer*1 array(n)
	if( n .ne. isize ) then
	  print *,'fail'
	endif
	array(1) = 1
	array(isize) = 2
	end
!
	call test
	end
