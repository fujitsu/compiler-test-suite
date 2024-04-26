	subroutine s(l4)
	logical*4 l4,ll4
	logical*8 l8
	l8 = .true.
	ll4 = l4
	if ( ll4 ) then
	    l8 = .false.
	endif
	print *,l8
	end
	call s(.true.)
	end
