	program main
	integer*4 i,j
	i = -8388607_4 
	call sub(i,j)
	print *,j
	end
!
	subroutine sub(r,q)
	real*4    r,q,v,w
	v = r
	w = v
	q = w
	end 

