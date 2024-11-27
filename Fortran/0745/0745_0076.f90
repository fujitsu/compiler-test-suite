	program p
	real,target:: a
	a = 1
	call sub(a)
        print *,'pass'
	contains
	subroutine sub(b)
	real, target:: b
	b = 3
	if(a/=3)write(6,*) "NG"
	if(b/=3)write(6,*) "NG"
	end subroutine sub
	end program p
