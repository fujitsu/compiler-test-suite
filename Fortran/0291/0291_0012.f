	subroutine test1
	real*16 A
	A=2.0Q0
        print '(1h ,z32.32)',A**10
	end
	subroutine test2
	real*16 A
	A=2.0Q0
	I=0
        print '(1h ,z32.32)',A**I
	end
	subroutine test3
	real*16 A
	A=1024.0Q0
	I=-10
        print '(1h ,z32.32)',A**I
	end
	call test1
	call test2
	call test3
	end
