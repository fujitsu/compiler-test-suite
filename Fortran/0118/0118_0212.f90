	dimension a(1000)
	i=-1
	do concurrent (i=1:1000)
	a(i) = 1
        call sub(i)
	end do
	print *,i
	print *,a(1)
	contains
	pure recursive subroutine sub(i)
	integer,intent(in)::i
        if (i.gt.1000) call sub(i) 
	end subroutine 
	end
