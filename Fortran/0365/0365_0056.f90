	subroutine test1
	dimension a(1000),b(1000)
	data a/1000*2/
	do i=1,1000
	  call inn(a,i)
	end do
	print *,sum(a),sum(b)
	contains
	  subroutine inn(a,i)
	  dimension a(:)
	  b(i) = a(i)
	  end subroutine
	end 
	call test1
	end
