	subroutine test1
	dimension a(1000)
	data a/1000*0/
	target a
	real,pointer,dimension(:) :: p
	p => a
	do i=1,1000
	  call inn(p)
	end do
	print *,sum(a)
	contains
	  subroutine inn(a)
	  real,dimension(:),pointer:: a
	  a=a+1
	  end subroutine
	end 
	call test1
	end
