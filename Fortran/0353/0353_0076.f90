	subroutine sub_1(m,a)
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn)
	do i=1,nn
	if (m(i) .ne. 5) then
	a(i) = a(i) / 2
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
	a(i) = a(i) / rc
	endif
	end do
	end
!
	parameter(nn=64*4)
	integer*1 m(nn)
	integer*1 a(nn),tmp
	do i=1,nn
          tmp=i
	  a(i) = (tmp-1_1)*2_1*2_1
	  m(i) = (tmp-1_1)*2_1*2_1
	end do
	call sub_1(m,a)
	call sub_2(m,a,2_1)
	do i=1,nn
          if (m(i) .ne. 5) then
            tmp=i
            if( a(i).ne. (tmp-1_1)*2_1*2_1/2_1/2_1 ) then
              tmp=i
              print *,(tmp-1_1)*2_1*2_1
              print *,(tmp-1_1)*2_1*2_1/2_1/2_1
              print *,"i=",i,a(i)
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
	
