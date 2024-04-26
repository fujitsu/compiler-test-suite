	subroutine sub(c1,c2,n)
	character*(n) c1,c2
	print *,c1==c2
	print *,c1/=c2
	print *,c1>=c2
	print *,c1<=c2
	print *,c1> c2
	print *,c1< c2
	end
	character*0 c1,c2
	print *,c1==c2
	print *,c1/=c2
	print *,c1>=c2
	print *,c1<=c2
	print *,c1> c2
	print *,c1< c2
	call sub(c1,c2,0)
	end
