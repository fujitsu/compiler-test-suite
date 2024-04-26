	subroutine sub1(i)
	implicit none
	integer j,i
	j=10
	call foo(j)
	contains
	  recursive subroutine foo(k)
	  integer k
	  print *,k,i
	  if( k .gt. 0 ) then
	    call foo(k-2)
	  endif
	  print *,k,i
	  end subroutine
	end 
	subroutine sub2(i1,i2)
	implicit none
	integer j,i1,i2
	j=10
	call foo(j)
	contains
	  recursive subroutine foo(k)
	  integer k
	  print *,k,i1,i2
	  if( k .gt. 0 ) then
	    call foo(k-2)
	  endif
	  print *,k,i1,i2
	  end subroutine
	end 
	call sub1(100)
	call sub2(200,300)
	end
