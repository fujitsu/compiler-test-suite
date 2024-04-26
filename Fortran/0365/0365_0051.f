	recursive subroutine test1
	type TAG
	  integer ii(1000)
	end type
	type(TAG)st
	do i=1,1000
	  st%ii(i) = 1 
	end do
	print *,sum(st%ii)
	end
	recursive subroutine test2
	type TAG
	  integer ii
	end type
	type(TAG)st(1000)
	do i=1,1000
	  st(i)%ii = 1 
	end do
	print *,sum(st(:)%ii)
	end
	call test1
	call test2
	end
