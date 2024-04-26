	recursive subroutine test1
	pointer(b,p)
	b=loc(r)
	p=1
        print *,'ok'
	end
	subroutine test2
	pointer(b,p)
	save b
	b=loc(r)
	p=1
	end
	subroutine test3
	pointer(b,p)
	data b/1/
	b=loc(r)
	p=1
	end
	subroutine test4
	pointer(b,p)
	common/com/j, b,i
	b=loc(r)
	p=1
	end
	subroutine test6(b)
	pointer(b,p)
	p=1
	end
	pointer(b,p)
	b = loc(r)
	call test1
	call test2
	call test3
	call test4
	call test6(b)
	end
