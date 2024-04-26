	program main
	call test1(a,1.0,2.0)
	if( a .ne. 2.0) print *,' NG 1-1 '
	call test1(a,2.0,1.0)
	if( a .ne. 2.0) print *,' NG 1-2 '
	call test1(a,-1.0,-2.0)
	if( a .ne. -1.0) print *,' NG 1-3 '
	call test1(a,-2.0,-1.0)
	if( a .ne. -1.0) print *,' NG 1-4 '
c
	call test2(a,1.0,2.0)
	if( a .ne. 1.0) print *,' NG 2-1 '
	call test2(a,2.0,1.0)
	if( a .ne. 1.0) print *,' NG 2-2 '
	call test2(a,-1.0,-2.0)
	if( a .ne. -2.0) print *,' NG 2-3 '
	call test2(a,-2.0,-1.0)
	if( a .ne. -2.0) print *,' NG 2-4 '
c
	call test3(a,1.0-1.0,2.0)
	if( a .ne. 2.0) print *,' NG 3-1 '
	call test3(a,2.0-1.0,1.0)
	if( a .ne. 2.0) print *,' NG 3-2 '
	call test3(a,-1.0-1.0,-2.0)
	if( a .ne. -1.0) print *,' NG 3-3 '
	call test3(a,-2.0-1.0,-1.0)
	if( a .ne. -1.0) print *,' NG 3-4 '
c
	call test4(a,1.0,2.0-1.0)
	if( a .ne. 2.0) print *,' NG 4-1 '
	call test4(a,2.0,1.0-1.0)
	if( a .ne. 2.0) print *,' NG 4-2 '
	call test4(a,-1.0,-2.0-1.0)
	if( a .ne. -1.0) print *,' NG 4-3 '
	call test4(a,-2.0,-1.0-1.0)
	if( a .ne. -1.0) print *,' NG 4-4 '
	print *,' PASS '
	end
	subroutine test1(a,b,c)
	intent(out) a
	intent(in)  b
	intent(in)  c
	a=max(b,c)
	end
	subroutine test2(a,b,c)
	intent(out) a
	intent(in)  b
	intent(in)  c
	a=min(b,c)
	end
	subroutine test3(a,b,c)
	intent(out) a
	intent(in)  b
	intent(in)  c
	a=max(b+1,c)
	end
	subroutine test4(a,b,c)
	intent(out) a
	intent(in)  b
	intent(in)  c
	a=max(b,c+1)
	end
