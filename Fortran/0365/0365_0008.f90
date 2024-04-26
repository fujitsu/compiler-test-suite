	subroutine sub(a,n)
	dimension a(n)
	common/com/k,s
	k=k+1
	a=1
	s=sum(a)
	print *,k,s
	end
	dimension a(1000)
	common/com/k,s
	k=0
	call sub(a,1000)
	end
