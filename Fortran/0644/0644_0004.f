
	program main

	print *,'//''(ENTRY ent())'' is OK!!'
	call flush(6)
	call ent()

	end

	subroutine sub()
	print *,'sub'
	call flush(6)

	entry ent()
	print *,'entry'
	call flush(6)
	return
	end
