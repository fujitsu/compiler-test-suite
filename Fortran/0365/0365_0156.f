	call sub(1)
	end
	recursive subroutine sub(n)
        integer u
	u=6
	do i=1,n
	  write(u,1)
 1      format(1h ,' Hello ')
	end do
	end
