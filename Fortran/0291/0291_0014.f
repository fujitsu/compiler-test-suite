	subroutine test1
	integer*8,parameter::i8=10
	real*8 A
	A=2.0Q0
	print *,A**i8
	end
	subroutine test2
	integer*8 i
	real*8 A
	A=2.0Q0
	I=0
	print *,A**I
	end
	subroutine test3
	integer*8 i
	real*8 A
	A=1024.0Q0
	I=-10
	print *,A**I
	end
	subroutine test
	call test1
	call test2
	call test3
	end 
	call test
	call test1
	call test2
	call test3
	contains
	subroutine test1
	integer*8,parameter::i8=10
	real*4 A
	A=2.0Q0
	print *,A**i8
	end subroutine
	subroutine test2
	integer*8 i
	real*4 A
	A=2.0Q0
	I=0
	print *,A**I
	end subroutine
	subroutine test3
	integer*8 i
	real*4 A
	A=1024.0Q0
	I=-10
	print *,A**I
	end  subroutine
	end
