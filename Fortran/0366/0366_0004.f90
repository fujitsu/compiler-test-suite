	logical,dimension(100,100)::a
	a=.false.
	a(1,1) = .true.
	call test
	contains
	  subroutine test
	  logical,dimension(100)::b
	  do i=1,100
	    b(i) = any(a(i,:),1)
	  end do
	  print *,b
	  end subroutine
	end
