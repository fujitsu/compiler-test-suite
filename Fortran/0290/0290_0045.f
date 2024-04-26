	common /com/r1,r2,r3,r4
	r1 = -5
	r2 = -15
	r3 = -25
	r4 = -35
	call sub()
	if( r1 == 17 .and. r2 == 18 .and. r3 == 36 .and. r4 == 37 ) then
	  print *,'OK'
	else
	  print *,'NG',r1,r2,r3,r4
	endif
	end
	subroutine sub()
	common /com/r1,r2,r3,r4
	if( r1.ne.0 ) then
	r1 = abs(r2)
	r1 = r1 + 1
	r2 = abs(r1)
	r2 = r2 + 1
	r3 = abs(r4)
	r3 = r3 + 1
	r4 = abs(r3)
	r4 = r4 + 1
	endif
	write(6,*) r3+1,r4+1
	r1 = r1 + 1
	r2 = r2 + 1
	end
