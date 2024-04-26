	program main
	call sub1
	call sub2
	call sub3
	end
	recursive subroutine sub1()
	character*10 cfun,cfun1,cfun2
	character*10 a,b,c
	a = cfun()
	print *,a
	a = '0123456789'
	b = 'abcdefghij'
	c = 'ABCDEFGHIJ'
	a = cfun1(a,b,c)
	print *,a
	a = '0123456789'
	b = 'abcdefghij'
	c = 'ABCDEFGHIJ'
	a = cfun2(1,a,b,c)
	print *,a
	end
	recursive function cfun()
	implicit none
	character*10 cfun
	cfun='0123456789'
	end
	recursive function cfun1(a,b,c)
	implicit none
	character*10 cfun1
	character*(*) a,b,c
	cfun1=a(1:3)//b(4:6)//c(7:)
	end
	recursive function cfun2(i,a,b,c)
	implicit none
	integer*4 i
	character*10 cfun2
	character*(*) a,b,c
	cfun2=a(i:3)//b(4:6)//c(7:)
	end
	recursive subroutine sub2()
	complex*8 c8,c8fun
	c8 = (1.0,-1.0)
	print *,c8fun(c8)
	end
	recursive function c8fun(c8)
	complex*8 c8,c8fun
	c8fun = c8
	end
	recursive subroutine sub3()
	implicit none
	type TAG ; integer i ; integer j; end type
	type (TAG) st,stfun
	st%i = 1
	st%j = -1
	print *,stfun(st)
	end
	recursive function stfun(st)
	implicit none
	type TAG ; integer i ; integer j; end type
	type (TAG) st,stfun
	stfun = st
	end
