	subroutine sub8(a,b)
	character*8 a,b
	if( a.ne.b ) then
	  print *,"OK"
	else
	  print *,"NG"
	endif
	end
!
	
	subroutine sub4(a,b)
	character*4 a,b
	if( a.ne.b ) then
	  print *,"NG"
	else
	  print *,"OK"
	endif
	end
!
	
	subroutine sub2(a,b)
	character*2 a,b
	if( a.ne.b ) then
	  print *,"OK"
	else
	  print *,"NG"
	endif
	end
!
        character*8 c81,c82
        character*4 c41,c42
        character*2 c21,c22

	c81 = "12345678"
	c82 = "12345677"
	c41 = "1234"
	c42 = "1234"
	c21 = "12"
	c22 = "13"
        call sub8( c81,c82 )
        call sub4( c41,c42 )
        call sub2( c21,c22 )

	end