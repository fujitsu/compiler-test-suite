	module inter
	integer,target::target1,target2, target3, target4, target5
	integer,target::target6, target7, target8
	integer,target::target9,target10,target11,target12,target13
	integer,target::target14,target15,target16
	interface
	  subroutine sub1(p1,p2,p3,p4)
	  integer,pointer::p1
	  integer,pointer::p2
	  integer,pointer::p3
	  integer,pointer::p4
	  end subroutine
	  subroutine sub2(p1,p2,p3,p4,p5,p6)
	  integer,pointer::p1
	  integer,pointer::p2
	  integer,pointer::p3
	  integer,pointer::p4
	  integer,pointer::p5
	  integer,pointer::p6
	  end subroutine
	  subroutine sub3(p1,p2,p3,p4,p5,p6,p7,p8)
	  integer,pointer::p1
	  integer,pointer::p2
	  integer,pointer::p3
	  integer,pointer::p4
	  integer,pointer::p5
	  integer,pointer::p6
	  integer,pointer::p7
	  integer,pointer::p8
	  end subroutine
	end interface
	end module
!
	subroutine sub1(p1,p2,p3,p4)
	use inter
	implicit none
	integer,pointer::p1
	integer,pointer::p2
	integer,pointer::p3
	integer,pointer::p4
	call check(p1,p2,p3,p4)
	p1 => target5
	p2 => target6
	p3 => target7
	p4 => target8
	contains 
	  subroutine check(i1,i2,i3,i4) 
	  integer,intent(in)::i1,i2,i3,i4
	  if(i1==1.and.i2==2.and.i3==3.and.i4==4) then
	    print *,' TEST 1 OK '
	  else
	    print *,' TEST 1 NG '
	  endif
	  end subroutine
	end
!
	subroutine sub2(p1,p2,p3,p4,p5,p6)
	use inter
	implicit none
	integer,pointer::p1
	integer,pointer::p2
	integer,pointer::p3
	integer,pointer::p4
	integer,pointer::p5
	integer,pointer::p6
	call check(p1,p2,p3,p4,p5,p6)
	p1 => target7
	p2 => target8
	p3 => target9
	p4 => target10
	p5 => target11
	p6 => target12
	contains 
	  subroutine check(i1,i2,i3,i4,i5,i6)
	  integer          i1,i2,i3,i4,i5,i6
	  if(i1==1.and.i2==2.and.i3==3.and.
     +         i4==4.and.i5==5.and.i6==6) then
	    print *,' TEST 2 OK '
	  else
	    print *,' TEST 2 NG '
	  endif
	  end subroutine
	end
!
	subroutine sub3(p1,p2,p3,p4,p5,p6,p7,p8)
	use inter
	implicit none
	integer,pointer::p1
	integer,pointer::p2
	integer,pointer::p3
	integer,pointer::p4
	integer,pointer::p5
	integer,pointer::p6
	integer,pointer::p7
	integer,pointer::p8
	call check(p1,p2,p3,p4,p5,p6,p7,p8)
	p1 => target9
	p2 => target10
	p3 => target11
	p4 => target12
	p5 => target13
	p6 => target14
	p7 => target15
	p8 => target16
	contains 
	  subroutine check(i1,i2,i3,i4,i5,i6,i7,i8)
	  integer,intent(in)::i1,i2,i3,i4,i5,i6,i7,i8
	  if(i1==1.and.i2==2.and.i3==3.and.
     +       i4==4.and.i5==5.and.i6==6.and.i7==7.and.i8==8) then
	    print *,' TEST 3 OK '
	  else
	    print *,' TEST 3 NG '
	  endif
	  end subroutine
	end
!
        program main
        use inter
	integer,pointer::p1
	integer,pointer::p2
	integer,pointer::p3
	integer,pointer::p4
	integer,pointer::p5
	integer,pointer::p6
	integer,pointer::p7
	integer,pointer::p8
	print *,' TEST START '
        target1 = 1
        target2 = 2
        target3 = 3
        target4 = 4
        target5 = 5
        target6 = 6
        target7 = 7
        target8 = 8
        target9 = 9
        target10 = 10
        target11 = 11
        target12 = 12
        target13 = 13
        target14 = 14
        target15 = 15
        target16 = 16
	p1 => target1
	p2 => target2
	p3 => target3
	p4 => target4
	call sub1(p1,p2,p3,p4)
	call check1(p1,p2,p3,p4)
	p1 => target1
	p2 => target2
	p3 => target3
	p4 => target4
	p5 => target5
	p6 => target6
	call sub2(p1,p2,p3,p4,p5,p6)
	call check2(p1,p2,p3,p4,p5,p6)
	p1 => target1
	p2 => target2
	p3 => target3
	p4 => target4
	p5 => target5
	p6 => target6
	p7 => target7
	p8 => target8
	call sub3(p1,p2,p3,p4,p5,p6,p7,p8)
	call check3(p1,p2,p3,p4,p5,p6,p7,p8)
	print *,' TEST END '
	contains
	  subroutine check1(i1,i2,i3,i4) 
	  integer,intent(in)::i1,i2,i3,i4
	  if(i1==5.and.i2==6.and.i3==7.and.i4==8) then
	    print *,' TEST 4 OK '
	  else
	    print *,' TEST 4 NG '
	  endif
	  end subroutine
	  subroutine check2(i1,i2,i3,i4,i5,i6)
	  integer,intent(in)::i1,i2,i3,i4,i5,i6
	  if(i1==7.and.i2==8.and.i3==9.and.
     +       i4==10.and.i5==11.and.i6==12) then
	    print *,' TEST 5 OK '
	  else
	    print *,' TEST 5 NG '
	  endif
	  end subroutine
	  subroutine check3(i1,i2,i3,i4,i5,i6,i7,i8)
	  integer:: i1,i2,i3,i4,i5,i6,i7,i8
	  if(i1==9.and.i2==10.and.i3==11.and.
     +       i4==12.and.i5==13.and.i6==14.and.i7==15.and.i8==16) then
	    print *,' TEST 6 OK '
	  else
	    print *,' TEST 6 NG '
	  endif
	  end subroutine
	end 
