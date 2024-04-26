	program main
	call test1
	call test2
	call test3
	call test4
	call test5
	call test6
	call test7
	call test8
	end
	subroutine test1
	integer,pointer:: p
	integer,target :: t
	p => t
	t = 1
	p = 2
	print *,t+1
	end
	subroutine test2
	real,pointer:: p
	real,target :: t
	p => t
	t = 1
	p = 2 
	print *,t+1
	end
	subroutine test3
	real,pointer,dimension(:):: p
	real,target ,dimension(10):: t
	p => t
	do i=1,10
	  t(i) = 1
	  p(i) = 2 
	end do
	print *,t+1
	end
	subroutine test4
	real,pointer,dimension(:):: p
	real,target ,dimension(10):: t
	p => t
	t = 1
	p = 2 
	print *,t+1
	end
	subroutine test5
	integer,pointer:: p
	integer,target :: t
	p => t
	p = 1          
	t = 2
	print *,p+1
	end
	subroutine test6
	real,pointer:: p
	real,target :: t
	p => t
	p = 1 
	t = 2
	print *,p+1
	end
	subroutine test7
	real,pointer,dimension(:):: p
	real,target ,dimension(10):: t
	p => t
	do i=1,10
	  p(i) = 1
	  t(i) = 2
	end do
	print *,p+1
	end
	subroutine test8
	real,pointer,dimension(:):: p
	real,target ,dimension(10):: t
	p => t
	p = 1 
	t = 2
	print *,p+1
	end
