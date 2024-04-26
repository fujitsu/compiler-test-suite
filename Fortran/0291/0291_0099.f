	module moda
	integer i1,i2,i3,k1,k2
	data i1/0/
	data i2/0/
	data i3/0/
	data k1/0/
	data k2/0/
	contains
	recursive subroutine sub(i)
	i1=i1+1
	k=i
	if( i.ge.0 ) then
	  select case ( mod(i,3) )
	  case (0)
	    call sub(i-1)
	  case (1)
	    call foo(i-1)
	  case (2)
	    call bar(i-1)
	  endselect
	endif
	contains 
	  recursive subroutine foo(j)
	  i2=i2+1
	  k1=k1+k
	  if( j.ge.0 ) then
	    select case ( mod(j,3) )
	    case (0)
	      call sub(j-1)
	    case (1)
	      call foo(j-1)
	    case (2)
	      call bar(j-1)
	    endselect
	  endif
	  end subroutine
	  recursive subroutine bar(n)
	  i3=i3+1
	  k2=k2+k
	  if( n.ge.0 ) then
	    select case ( mod(n,3) )
	    case (0)
	      call sub(n-1)
	    case (1)
	      call foo(n-1)
	    case (2)
	      call bar(n-1)
	    endselect
	  endif
	  end subroutine
	end subroutine
	end module
	use moda
	call sub(10)
        if( i1==5 .and. i2==4 .and. i3==3 ) then
          if( k1==25 .and. k2==15 ) then
            print *,' OK '
          else
            print *,' NG 2 '
          endif
        else
          print *,' NG 1 '
        endif
	end
