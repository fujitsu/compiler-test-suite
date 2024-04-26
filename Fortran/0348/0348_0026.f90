	subroutine sub()
	integer m,a
	common/com/m,a(0:7)
	do i=1,m
        a(i) = 1.
	if( i .ne. m ) then
          a(i) = 2.
	endif
	end do
	end
	integer m,a
	common/com/m,a(0:7)
        a=0
	m = 1
	call sub
	if( all(a .eq. (/0,1,0,0,0,0,0,0/)) ) then
        print *,"PASS"
        else
	print *, a
        print *,"NG"
	end if
	end
