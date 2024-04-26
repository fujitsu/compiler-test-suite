	subroutine test1(n)
	real a(n)
	do i=1,n
	  a(i) = i
	end do
	end
!
	subroutine test2(n)
	real a(n)
	do i=1,n
	  a(i) = i
	  write(6,*) a(i)
	end do
	end
!
	subroutine test3(n)
	real a(n)
	do i=1,n
	  a(i) = i
	  write(6,1) a(i)
1       format(1h ,E10.3)
	end do
	end
!
	subroutine test4(n)
	do i=1,n
	  write(6,*) 'TEST '
	end do
	end
!
	subroutine test5(n)
	do i=1,n
	  write(6,1)
	end do
1       format(' TEST ')
	end
!
	subroutine test6(n)
	common/com/j
	do i=1,n
	  write(j,1)
	end do
1       format(' TEST ')
	end
!
	subroutine test7(n)
	common/com/j
	do i=1,n
	  write(j,1)
	  write(1,2)
	end do
1       format(' TEST1 ')
2       format(' TEST2 ')
	end
!
	subroutine test8(n)
	common/com/j
	do i=1,n
	  write(j,1)
	  write(1,1)
	end do
1       format(' TEST1 ')
2       format(' TEST2 ')
	end
!
	call test1(2)
	call test2(2)
	call test3(2)
	call test4(2)
	call test5(2)
	call test6(2)
	call test7(2)
	call test8(2)
	end
	block data
	common/com/j
	data j/6/
	end
