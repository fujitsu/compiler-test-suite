	subroutine sub1(c)
	complex*32 c
	c=1
	end
	subroutine sub2(r)
	real*16 r
	r=1
	end
	subroutine sub3(i)
	integer*8 i
	i=1
	end
	program main
	integer*8 i
	real*16 r
	complex*32 c
	i=0
	r=0
	c=0
	call sub1(c)
	call sub2(r)
	call sub3(i)
	if( i.eq.1 ) then
	  print *,' OK 1 '
	else
	  print *,' OK 1 '
	endif
	if( r.eq.1 ) then
	  print *,' OK 2 '
	else
	  print *,' OK 2 '
	endif
	if( c.eq.1 ) then
	  print *,' OK 3 '
	else
	  print *,' OK 3 '
	endif
	end
