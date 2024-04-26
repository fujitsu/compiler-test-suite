	subroutine sub(a,b)
	external a
	b = a(1.)
	end
!
	intrinsic sin
	call sub(sin,b)
	if( abs(sin(1.0) - b) <= 1.0E-7 ) then
	print *,"OK"
	else
	print *,"NG"
	endif
	end
	
