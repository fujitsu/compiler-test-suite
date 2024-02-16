	subroutine sub()
	common/com/a
	real,pointer::a(:)
	nullify(a)
	end

	common/com/a
	real,pointer::a(:)
	call sub
	allocate(a(10))
	a=1
	if( all(a==1) ) then
	print *,'PASS'
	else
	print *,'NG'
	endif
	deallocate(a)
	end

