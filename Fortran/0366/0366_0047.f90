	subroutine test1
	logical c(1000)
	pointer p
	pointer q
	nullify(p)
	nullify(q)
	do i=1,1000
	  c(i) = associated(p,q)
	end do
	print *,c(1)
	end
	call test1
	end
