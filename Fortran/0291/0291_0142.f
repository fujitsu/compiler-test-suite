	module inter
	interface
	  subroutine sub1(p)
	  character*10,pointer::p
	  end subroutine
	  subroutine sub2(p)
	  character*10,pointer::p
	  end subroutine
	  subroutine sub3(p)
	  character*10,pointer::p
	  end subroutine
	end interface
	end module

	subroutine sub1(po)
	use inter
	implicit none
	character*10,pointer::po
	po='0123456789'
	end
!
	subroutine sub2(po)
	use inter
	implicit none
	character*10,pointer::po
	common /com/ctarget1,ctarget2
	character*10,target:: ctarget1,ctarget2
	ctarget1='0123456789'
	po => ctarget1
	end
!
	subroutine sub3(po)
	use inter
	implicit none
	character*10,pointer::po
	common /com/ctarget1,ctarget2
	character*10,target:: ctarget1,ctarget2
	po = '0123456789'
	ctarget2= 'abcdefghij'
	po => ctarget2
	end
!
	program main
	use inter
	implicit none
	common /com/ctarget1,ctarget2
	character*10,target:: ctarget1,ctarget2
	character*10,pointer::p
	character*10,target::c
	p => c
	call sub1(p)
	if( c /= '0123456789' ) then
	  print *,' TEST 1 NG '
	endif
	nullify(p)
	call sub2(p)
	if( p /= '0123456789' ) then
	  print *,' TEST 2 NG '
	endif
	p => c
	call sub3(p)
	if( p /= 'abcdefghij' ) then
	  print *,' TEST 3 NG '
	endif
	print *,' TEST PASS '
	end
