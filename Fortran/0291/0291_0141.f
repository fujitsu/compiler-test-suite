	module inter
	interface
	  subroutine sub1(p)
	  integer,pointer::p
	  end subroutine
	  subroutine sub2(p)
	  integer,pointer::p
	  end subroutine
	  subroutine sub3(p)
	  integer,pointer::p
	  end subroutine
	end interface
	end module

	subroutine sub1(po)
	use inter
	integer,pointer::po
	po=1
	end
!
	subroutine sub2(po)
	use inter
	implicit none
	integer,pointer::po
	common /com/itarget1,itarget2
	integer,target::itarget1,itarget2
	itarget1=1
	po => itarget1
	end
!
	subroutine sub3(po)
	use inter
	implicit none
	integer,pointer::po
	common /com/itarget1,itarget2
	integer,target::itarget1,itarget2
	po = 1
	itarget2=2
	po => itarget2
	end
!
	program main
	use inter
	implicit none
	common /com/itarget1,itarget2
	integer,target::itarget1,itarget2
	integer,pointer::p
	integer,target::i
	p => i
	call sub1(p)
	if( i /= 1 ) then
	  print *,' TEST 1 NG '
	endif
	nullify(p)
	call sub2(p)
	if( p /= 1 ) then
	  print *,' TEST 2 NG '
	endif
	p => i
	call sub3(p)
	if( p /= 2 ) then
	  print *,' TEST 3 NG '
	endif
	print *,' TEST PASS '
	end
