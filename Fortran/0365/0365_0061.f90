!
	subroutine test1(n)
	namelist /nam/ a,b,c
	do i=1,n
	  write(6,nam)
	end do
	end
!
	subroutine test3(n)
	do i=1,n
	  write(6,1,rec=1) 
1         format(1h ,' PASS ')
	end do
	end
!
	subroutine test4(n)
	do i=1,n
	  read(5,rec=1) x
	end do
	end
!
	call test1(0)
	call test3(0)
	call test4(0)
	print *,'PASS'
	end

