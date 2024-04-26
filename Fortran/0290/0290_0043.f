	subroutine sub1
	common /com/ic,ia,ib
	ia = ia + 1
	end
	program main
	common /com/ic,ia,ib
	ia = 0
	ib = 0
	ic = 0

	do i=1,10
	  ic = ic + 1
        enddo
	print *,ic

	do i=1,10
	  ia = ia + 1
	  call sub1
        enddo
	print *,ia

	do i=1,10
	  ib = ib + 1
	  print *,ib,ia
        enddo
	if( ia == 20 .and. ib == 10 .and. ic == 10 ) then
	  print *,' OK '
        else
	  print *,' NG '
        endif
	end
