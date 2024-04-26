	subroutine test3
	common/com/a,x
	integer m,n,a,b,x
	x=1
        b=0
	m = max(b,x)
	n = min(b,x)
	print *,m,n
	end
	subroutine test2
	common/com/a,b
	integer m,n,a,b
	m = max(a,1)
	n = min(a,1)
	print *,m,n
	end
	subroutine test1
	common/com/a,b
	integer m,n,a,b
	m = max(a,b)
	n = min(a,b)
	print *,m,n
	end
	common/com/a,b
	integer a,b
	a=2
	b=3
	call test1
	call test2
	call test3
	end
