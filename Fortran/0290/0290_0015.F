	function c8_fun0() result(res)
	implicit none
	complex*8 res
	res = (1.0,2.0)
	end
c
	function c8_fun2(r1,r2) result(res)
	implicit none
	complex*8 res
	real*4 r1,r2
	res = cmplx(r1,r2)
	end
c
	function c8_fun5(r1,r2,c,r4,r5) result(res)
	implicit none
	complex*8 res,c
	real*4 r1,r2
	real*8 r4,r5
	res = cmplx(r1,r2) + c + cmplx(r4,r5)
	end
c
	function c8_fun6(c,r2,r3,r4,r5,i6) result(res)
	implicit none
	complex*8 res,c
	real*4 r2,r3
	real*8 r4,r5
	integer i6
	res = cmplx(r2,r3) + c + cmplx(r4,r5) + cmplx(i6,0)
	end
c
	function c8_fun7(i1,r2,r3,r4,r5,c,i7) result(res)
	implicit none
	complex*8 res,c
	real*4 r2,r3
	real*8 r4,r5
	integer i1,i7
	res = cmplx(r2,r3) + c + cmplx(r4,r5) + cmplx(i1,i7)
	end
c
	function c8_fun10(i1,i2,i3,i4,r5,r6,r7d,r8d,cx,ch) result(res)
	implicit none
	integer*1 i1
	integer*2 i2
	integer*4 i3
	integer*4 i4
	real*4    r5
	real*8    r6
	real*8    r7d(1)
	real*8    r8d(1)
	complex*8 cx,res
	character*1 ch
	res = cmplx(i1,i2) + cmplx(i3,i4) + cmplx(r5,r6)
	res = res + cmplx(r7d(1),r8d(1))
	res = res + cx + cmplx(ichar(ch),0)
	end
c
        complex*16 function cs_fun0()
	implicit none
	cs_fun0 = 1.0
	end
c
        complex*16 function cs_fun2(c1,c2)
	implicit none
	character*(*) c1
	character*(*) c2
	cs_fun2 = 0
	if( len(c1) /= 10 ) cs_fun2 = cs_fun2 + 1
	if( len(c2) /= 20 ) cs_fun2 = cs_fun2 + 1
	if( c1 /= "ABC45ABC90" ) cs_fun2 = cs_fun2 + 1
	if( c2 /= 20H01234567891234567890 ) cs_fun2 = cs_fun2 + 1
	cs_fun2 = cs_fun2 + 2.0
	end
c
	function cs_fun5(i,c1,r,c2,c3) result( res )
	implicit none
	complex*16 res
	real       r
	integer,intent(in)::i
	integer j
	character*(*),intent(in):: c1,c2,c3
	res=0
	if( i /= r ) res = 1
	do j=1,len(c1)
	  res = real(res) + ichar(c1(j:j)) - ichar('0')
	enddo
	if( c2 /= c3 ) res = res + 1
	end
c
	function cs_fun6(i,c1,l,c3,c4,c5) result( res )
	implicit none
	complex*16 res
	character*(*),intent(in):: c4,c5
	character*(*),intent(out):: c1,c3
	integer*1 i
	integer*1,parameter::one=1
	integer(8)   l
	res = 0
	if( l /= loc(c1) ) res = 1
	if( i /= one ) res = 1
	if( c4 /= c5 ) res = 1
	c1 = 'ABC'
	c3 = 'DEF'
	end
c
	function cs_fun10(i1,i2,c3,i4,i5,i6,c7,i8,i9,i10) result( res )
	implicit none
	complex*16 res
	integer,intent(in)::i1,i2,i4,i5,i6,i8,i9,i10
	character*(*),intent(in)::c3,c7
	res = 1
	if( i1+i2+i4+i5+i6+i8+i9+i10 /= 1+2+4+5+6+8+9+10 ) then
	  res = 2
	endif
	if( c3//c7 /= 'ABC1234567' ) res = 3
	end
c
	function cs_fun7(i1,i2,c3,i4,i5,i6,cs) result( res )
	implicit none
	integer,intent(in)::i1,i2,i4,i5,i6
	character*(*),intent(in)::c3
	character*7               c7/'1234567'/
	complex*16 res
	complex*16 cs
	res = cs(i1,i2,c3,i4,i5,i6,c7,8,9,10)
	end
c
        subroutine sub
	implicit none
	complex*16 cs_fun0,cs_fun2,cs_fun5,cs_fun6,cs_fun7
	complex*16,external:: cs_fun10
	character*1 c1
	character*3 c3
	integer*1,parameter::one=1
*
	if( cs_fun0() /= 1.0 ) print *,' NG cs_fun0 '
	if( cs_fun2("ABC45ABC90",'0123456789'//"1234567890") /= 2.0 ) then
	   print *,' NG cs_fun2 '
	endif
	if( cs_fun5(1,'1',1.0,'23 ','23') /= 1 ) print *,' NG cs_fun5 '
	if( cs_fun6(one,c1,loc(c1),c3,'ABC','ABD   ') /= 1 ) then
	   print *,' NG cs_fun6 '
        endif
	if( c1 /= 'A' .or. c3 /= 'DEF' ) print *,' NG cs_fun6 '
	if( cs_fun7(1,2,'ABC',4,5,6,cs_fun10) /= 1 ) then
	   print *,' NG cs_fun7 '
        endif
	end
c
	program main
	implicit none
	integer i
	complex*8  c8_1,c8_2,c8_fun0,c8_fun2,c8_fun5,c8_fun6,c8_fun7
	complex*8  c8_fun10
	logical res(10)
	integer*1 ,parameter::i1  = 1
	integer*2 ,parameter::i2  = 2
	integer*4 ,parameter::i3  = 3
	integer*4 ,parameter::i4  = 4
	real*4    ,parameter::r5  = 1.0
	real*8    ,parameter::r6  = 2.0
	real*8    r7d(1)/3.0/
	real*8    r8d(1)/4.0/
	complex*8 ,parameter::cx = (-1.0,-2.0)
	character*1 ch
c
	res = .false.
	c8_1 = c8_fun0() ; if( c8_1 /= cmplx( 1.0,2.0 )) res(1) = .true.
	c8_1 = c8_fun2(1.0,2.0)
	if( c8_1 /= cmplx( 1.0,2.0 ) )  res(2) = .true.
	c8_2 = cmplx( -1.0,-2.0 )
	c8_1 = c8_fun5(1.0,2.0,c8_2,DBLE(1.0),DBLE(2.0))
	if( c8_1 /= cmplx( 1.0,2.0 ) )  res(3) = .true.
	c8_2 = cmplx( -1.0,-2.0 )
	c8_1 = c8_fun6(c8_2,1.0,2.0,DBLE(1.0),DBLE(2.0),1)
	if( c8_1 /= cmplx( 2.0,2.0 ) )  res(4) = .true.
	c8_2 = cmplx( -1.0,-2.0 )
	c8_1 = c8_fun7(1,1.0,2.0,DBLE(1.0),DBLE(2.0),c8_2,2)
	if( c8_1 /= cmplx( 2.0,4.0 ) )  res(5) = .true.
	c8_2 = cmplx( -1.0,-2.0 )
	ch = char(10)
	c8_1 = c8_fun10(i1,i2,i3,i4,r5,r6,r7d,r8d,cx,ch)
	if( c8_1 /= cmplx( 1+3+1+3-1+10,2+4+2+4-2 ) )  res(6) = .true.
	do i=1,10
	  if( res(i) )  then
	     print *,' NG ',i
          endif
        enddo
	call sub
	print *,' complex function TEST passed '
	end
