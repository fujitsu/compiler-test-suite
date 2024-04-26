	subroutine sub_1(m,a)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn)
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = a(i) - 2_1
	endif
	end do
	end
!
	subroutine sub_2(m,a,rc)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn),rc
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = a(i) - rc
	endif
	end do
	end
!
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn),t
	do i=1,nn
          t = -i
	  a(i) = t+1_1
	  m(i) = t+1_1
	end do
	call sub_1(m,a)
	call sub_2(m,a,-1_1)
	do i=1,nn
          if (m(i) .ne. 5) then
            t=-i
            if( a(i).ne. ((t+1_1)-2_1)+1_1 ) then
              print *,i,a(i),-i
              stop  "NG1"
            endif
          else
            if( a(i).ne. 5 ) then
              print *,a(i)
              stop  "NG2"
            endif
          endif
	end do
        print *,'PASS'
	end
	
