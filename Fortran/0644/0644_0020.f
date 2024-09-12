	v=10
	call s(loc(v),v)
	end
	subroutine s(p,v)
	pointer (p,k)
	print *,'Result: (k v)=(',k,v,')'
	call flush(6)
	end
