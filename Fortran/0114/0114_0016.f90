	subroutine sub()
	common/com/a
	real,pointer::a(:)
	allocate(a(10))
	a=1
	end

	common/com/a
	real,pointer::a(:)
	call sub
	if( all(a==1) ) then
	print *,'PASS'
	else
	print *,'NG'
	endif
	deallocate(a)
	end

