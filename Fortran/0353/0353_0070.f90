	subroutine sub_1(m,a)
	parameter(nn=64)
	integer*1 m(nn)
	integer*1 a(nn)
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = rshift(a(i), 1)
	endif
	end do
	end
!
	subroutine sub_2(m,a,rc)
	parameter(nn=64)
	integer*1 m(nn)
	integer*1 a(nn),rc
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = rshift(a(i), rc)
	endif
	end do
	end
!
	parameter(nn=64)
	integer*1 m(nn)
	integer*1 a(nn),tmp
	do i=1,nn
          tmp = (i-1)
	  a(i) = tmp*2_1*2_1
	  m(i) = tmp*2_1*2_1
	end do
	call sub_1(m,a)
	call sub_2(m,a,1_1)
	do i=1,nn
          if (m(i) .ne. 5) then
            tmp = i-1
            tmp = tmp *2_1*2_1/2_1/2_1
            if( a(i).ne. tmp) then
              print *,i,a(i),tmp
              stop  "NG1"
            endif
          else
            if( i.eq.4 .and. a(i).ne. 5 ) then
              print *,a(i)
              stop  "NG2"
            endif
          endif
	end do
        print *,'PASS'
	end
	
