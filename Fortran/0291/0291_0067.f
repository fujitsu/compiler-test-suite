	program main
	call test1
	call test2
	call test3
	call test4
	call test5
	call test6
	call test7
	call test8
	call test9
	end
!
	subroutine test1
	type TAG
	  integer i
	  integer j
	end type
	type (TAG) st1,st2
	st2%i = 1
	st2%j = 2
	st1 = st2
	if( st1%i == 1 .and. st1%j == 2 ) then
	  print *,' TEST 1 OK '
	else
	  print *,' TEST 1 NG '
	endif
	end
!
	subroutine test2
	type TAG
	  integer i(10)
	  integer j(10)
	end type
	type (TAG) st1,st2
	st2%i = 1
	st2%j = 2
	st1 = st2
	if( st1%i(5) == 1 .and. st1%j(6) == 2 ) then
	  print *,' TEST 2 OK '
	else
	  print *,' TEST 2 NG '
	endif
	end
!
!
	subroutine test3
	type TAG
	  integer i
	  integer j
	end type
	type (TAG) st1
	st1 = TAG(1,2)
	if( st1%i == 1 .and. st1%j == 2 ) then
	  print *,' TEST 3 OK '
	else
	  print *,' TEST 3 NG '
	endif
	end
!
	subroutine test4
	type TAG
	  integer i
	  integer j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,2))
	st1 = st2
	if( st1%i == 1 .and. st1%j == 2 ) then
	  print *,' TEST 4 OK '
	else
	  print *,' TEST 4 NG '
	endif
	end
!
!
	subroutine test5
	type TAG
	  integer i(10)
	  integer j(10)
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG((/1,2,3,4,5,6,7,8,9,10/),
     +	                    (/1,2,3,4,5,6,7,8,9,10/)))
	st1 = st2
	if( st1%i(6) == 6 .and. st1%j(7) == 7 ) then
	  print *,' TEST 5 OK '
	else
	  print *,' TEST 5 NG '
	endif
	end
!
!
	subroutine test6
	type TAG
	  character c(4)
	  integer j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG((/'a','b','c','d'/),2))
	st1 = st2
	if( st1%c(2) == 'b' .and. st1%j == 2 ) then
	  print *,' TEST 6 OK '
	else
	  print *,' TEST 6 NG '
	endif
	end
!
!
	subroutine test7
	type TAG
	  character c(3)
	  integer j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG((/'a','b','c'/),2))
	st1 = st2
	if( st1%c(2) == 'b' .and. st1%j == 2 ) then
	  print *,' TEST 7 OK '
	else
	  print *,' TEST 7 NG '
	endif
	end
!
!
	subroutine test8
	type TAG
	  character*3 c1
	  integer j
	  character*4 c2
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG('abc',2,'ABCD'))
	st1 = st2
	if( st1%c1 == 'abc' .and. st1%j == 2 .and. st1%c2 == 'ABCD' ) then
	  print *,' TEST 8 OK '
	else
	  print *,' TEST 8 NG '
	endif
	end
!
!
	subroutine test9
	type TAG2
	  integer i1,i2
	end type
	type TAG
	  integer j
	  type(TAG2) st
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,TAG2(2,3)))
	st1 = st2
	if( st1%j == 1 .and. st1%st%i1 == 2 .and. st1%st%i2 == 3 ) then
	  print *,' TEST 9 OK '
	else
	  print *,' TEST 9 NG '
	endif
	end
