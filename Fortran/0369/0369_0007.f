	subroutine sub1
	integer*1 i1
	data i1/z'ffff'/
	print *,i1
	end
	subroutine sub2
	integer*1 i1
	data i1/z'ffff00'/
	print *,i1
	end
	subroutine sub3
	integer*1 i1
	data i1/z'00ffff'/
	print *,i1
	end

	subroutine sub4
	integer*1 i1
	data i1/"ABC"/
	print *,char(i1)
	end

	subroutine sub5
	integer*1 i1
	data i1/""/
        if( i1 .ne. ichar(' ') ) print *,"NG"
	end

	call sub1
	call sub2
	call sub3
	call sub4
	call sub5
	end

