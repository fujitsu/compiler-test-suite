	subroutine sub()
	common/com/a
	real,pointer::a(:)
	if( all(a==1) ) then
	print *,'PASS'
	else
	print *,'NG'
	endif
	deallocate(a)
	end

	common/com/a
	real,pointer::a(:)
	allocate(a(10))
	a=1
	call sub
	end

