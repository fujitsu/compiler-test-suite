	module inter
	interface
	  subroutine sub1(p)
	  complex*16,pointer::p
	  end subroutine
	  subroutine sub2(p)
	  complex*16,pointer::p
	  end subroutine
	  subroutine sub3(p)
	  complex*16,pointer::p
	  end subroutine
	end interface
	end module

	subroutine sub1(po)
	use inter
	implicit none
	complex*16,pointer::po
	po=(1.0,2.0)
	end
!
	subroutine sub2(po)
	use inter
	implicit none
	complex*16,pointer::po
	common /com/itarget1,itarget2
	complex*16,target::itarget1,itarget2
	itarget1=(1.0,2.0)
	po => itarget1
	end
!
	subroutine sub3(po)
	use inter
	implicit none
	complex*16,pointer::po
	common /com/itarget1,itarget2
	complex*16,target::itarget1,itarget2
	po = (1.0,2.0)
	itarget2=(2.0,3.0)
	po => itarget2
	end
!
	program main
	use inter
	implicit none
	common /com/itarget1,itarget2
	complex*16,target::itarget1,itarget2
	complex*16,pointer::p
	complex*16,target::i
	p => i
	call sub1(p)
	if( i /= (1.0,2.0) ) then
	  print *,' TEST 1 NG '
	endif
	nullify(p)
	call sub2(p)
	if( p /= (1.0,2.0)) then
	  print *,' TEST 2 NG '
	endif
	p => i
	call sub3(p)
	if( p /= (2.0,3.0) ) then
	  print *,' TEST 3 NG '
	endif
	print *,' TEST PASS '
	end
