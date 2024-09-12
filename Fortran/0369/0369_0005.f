	character*5 c
	data c/"ABCDEFGH"/
	call sub(c)
	end

	subroutine sub(i1)
	integer*1 i1(5)
	print *,i1-ichar('A')
	end
