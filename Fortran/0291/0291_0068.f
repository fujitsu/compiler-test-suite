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
	subroutine test1
	type TAG
	  integer i
	  integer j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,2))
	st1 = st2
	if( st1%j == 1 .and. st1%i == 2 ) then
	  print *,' TEST 1 OK '
	else
	  print *,' TEST 1 NG '
	endif
	end
	subroutine test2
	type TAG
	  real*4  i
	  real*4  j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1.0,2.0))
	st1 = st2
	if( st1%j == 1.0 .and. st1%i == 2.0 ) then
	  print *,' TEST 2 OK '
	else
	  print *,' TEST 2 NG '
	endif
	end
	subroutine test3
	type TAG
	  real*8  i
	  real*8  j
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1.0,2.0))
	st1 = st2
	if( st1%j == 1.0 .and. st1%i == 2.0 ) then
	  print *,' TEST 3 OK '
	else
	  print *,' TEST 3 NG '
	endif
	end
	subroutine test4
	type TAG
	  character*4  c
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG('ABCD'))
	st1 = st2
	if( st1%c == 'ABCD' ) then
	  print *,' TEST 4 OK '
	else
	  print *,' TEST 4 NG '
	endif
	end
	subroutine test5
	type TAG
	  integer*1 i1,i2,i3,i4
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,2,3,4))
	st1 = st2
	if( st1%i1 == 1 ) then
	  print *,' TEST 5 OK '
	else
	  print *,' TEST 5 NG '
	endif
	end
	subroutine test6
	type TAG
	  integer*2 i1,i2,i3,i4
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,2,3,4))
	st1 = st2
	if( st1%i1 == 1 ) then
	  print *,' TEST 6 OK '
	else
	  print *,' TEST 6 NG '
	endif
	end
	subroutine test7
	type TAG
	  logical*1 i1,i2,i3,i4
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(.true.,.false.,.true.,.false.))
	st1 = st2
	if( st1%i1 .and..not.st1%i2.and.st1%i3.and..not.st1%i4 ) then
	  print *,' TEST 7 OK '
	else
	  print *,' TEST 7 NG '
	endif
	end
	subroutine test8
	type TAG
	  logical*4 i1,i2,i3,i4
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(.true.,.false.,.true.,.false.))
	st1 = st2
	if( st1%i1 .and..not.st1%i2.and.st1%i3.and..not.st1%i4 ) then
	  print *,' TEST 8 OK '
	else
	  print *,' TEST 8 NG '
	endif
	end
!
	subroutine test9
	type TAG
	  integer*1 i1
	  integer*2 i2
	  integer*4 i4
	end type
	type (TAG) st1,st2
	parameter(st2 = TAG(1,2,3))
	st1 = st2
	if( st1%i1 == 1 .and. st1%i2 == 2 .and. st1%i4 == 3 ) then
	  print *,' TEST 9 OK '
	else
	  print *,' TEST 9 NG '
	endif
	end
