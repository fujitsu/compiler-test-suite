	program m
	call s0(1)
 	call s0_ent(1)
	end program
c
	subroutine s0(one)
	integer,intent(in)::one,val
	integer,parameter ::two=2
	integer           ::wk
	print *,'=== enter s0 ==='
	wk = one+3
	call pri(wk)
	call pri(one)
	wk = one+3
	call pri(wk)
	print *,'=== exit  s0 ==='
 	return
 	entry s0_ent(val)
	print *,'--- enter s0_ent ---'
 	wk = val+two
	call pri(wk)
	call pri(val)
 	wk = val+two
	call pri(wk)
	print *,'--- exit  s0_ent ---'
	return
	end subroutine s0
c
	subroutine pri(v)
	integer v
	print *,v
	end subroutine pri
