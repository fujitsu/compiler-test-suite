	common/com/i1,i2
	i1=0
	i2=0
	call sub(10)
	if( i1==5 .and. i2==7 ) then
	  print *,' OK '
	else 
	  print *,' NG '
	endif
	end
	recursive subroutine sub(i)
	common/com/i1,i2
	i1=i1+1
	k=i
	if( i.ge.0 ) then
	  if( mod(i,3) .eq. 0 ) then
	    call sub(i-1)
	  else
	    call foo(i-1)
	  endif
	endif
	contains 
	  recursive subroutine foo(j)
	  i2=i2+1
	  if( j.ge.0 ) then
	    if( mod(j,3) .eq. 0 ) then
	      call sub(j-1)
	    else
	      call foo(j-1)
	    endif
	  endif
	  end subroutine
	end subroutine

