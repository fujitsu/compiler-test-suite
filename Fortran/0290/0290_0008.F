	program main
	external sub1,sub2,sub3,sub4,sub5
	call ftable(sub1)
	call ftable(sub2)
	call ftable(sub3)
	call ftable(sub4)
	call ftable(sub5)
	call c()
	end
	subroutine sub1
	print *,'sub1'
	end
	subroutine sub2
	print *,'sub2'
	end
	subroutine sub3
	print *,'sub3'
	end
	subroutine sub4
	print *,'sub4'
	end
	subroutine sub5
	print *,'sub5'
	end
	subroutine ftable(x)
	pointer(base,ss)
	external x
	integer,save:: i/1/
	integer*8,save:: tbl(5)
	integer :: ss
	tbl(i) =loc( x )
	i=i+1
	return
	entry c
	do j=1,i-1
	  base = tbl(j)
	  call dsub(ss)
        enddo
	end
	subroutine dsub(x)
	external x
	call x
	end
