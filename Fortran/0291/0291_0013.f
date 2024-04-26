	subroutine test1
	integer*8,parameter::i8=10
	real*16 A
	A=2.0Q0
	write(6,'(1h ,z32.32)')A**i8
	end
	subroutine test2
	integer*8 i
	real*16 A
	A=2.0Q0
	I=0
	write(6,'(1h ,z32.32)')A**I
	end
	subroutine test3
	integer*8 i
	real*16 A
	A=1024.0Q0
	I=-10
	write(6,'(1h ,z32.32)')A**I
	end
	call test1
	call test2
	call test3
	end
