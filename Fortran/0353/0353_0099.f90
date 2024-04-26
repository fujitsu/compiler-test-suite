	subroutine sub_1(m,a)
	parameter(nn=64/2)
	integer*8 m(nn)
	integer*8 a(nn)
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = a(i) * 2
	endif
	end do
	end
!
	subroutine sub_2(m,a,rc)
	parameter(nn=64/2)
	integer*8 m(nn)
	integer*8 a(nn),rc
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = a(i) * rc
	endif
	end do
	end
!
	parameter(nn=64/2)
	integer*8 m(nn)
	integer*8 a(nn)
	do i=1,nn
	  a(i) = i-1
	  m(i) = i-1
	end do
	call sub_1(m,a)
	call sub_2(m,a,-2_8)
	do i=1,nn
          if (m(i) .ne. 5) then
            if( a(i).ne. -(i-1)*2*2 ) stop  "NG1"
          else
            if( a(i).ne. 5 ) then
              print *,a(i)
              stop  "NG2"
            endif
          endif
	end do
        print *,'PASS'
	end
	
