	subroutine sub(mask)
	logical*1 mask
	dimension mask(1000)
	dimension ilast(1)
	ilast(1) = 0
	do i=1,1000
	  if( mask(i) ) then
	    ilast(1) = i
	  endif
	end do
	print *,ilast(1)
	end
	logical*1 mask
	dimension mask(1000)
	mask=.false.
	call sub(mask)
	mask(1)=.true.
	call sub(mask)
	mask(1)=.false.
	mask(1000)=.true.
	call sub(mask)
	mask(1)=.true.
	call sub(mask)
	end
