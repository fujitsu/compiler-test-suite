	implicit none
	integer*1 addres1(7*7),subres1(7*7),mulres1(7*7),divres1(6*7)
	integer*2 addres2(7*7),subres2(7*7),mulres2(7*7),divres2(6*7)
	integer*1 modres1(7*6),powres1(27)
	integer*2 modres2(7*6),powres2(27)
	data addres1/0,1,10,100,-1,-10,-100,1,2,11,101,0,-9,
     +   -99, 10,11,20,110,9,0,-90,100,101,110,-56,99,90,0,-1,0,
     +    9,99,-2,-11,-101,-10,-9,0,90,-11,-20,-110,-100,-99,-90,0,-101,
     +   -110,56/
	data addres2/0,1,10,100,-1,-10,-100,1,2,11,101,0,-9,
     +   -99, 10,11,20,110,9,0,-90,100,101,110,-56,99,90,0,-1,0,
     +    9,99,-2,-11,-101,-10,-9,0,90,-11,-20,-110,-100,-99,-90,0,-101,
     +   -110,56/
	data subres1/ 0,-1,-10,-100,1,10,100,1,0,-9,-99,2,11,101,10,9,0,
     +   -90,11,20,110,100,99,90,0,101,110,-56,-1,-2,-11,-101,0,9,99,
     +   -10,-11,-20,-110,-9,0,90,-100,-101,-110,56,-99,-90,0 /
	data subres2/ 0,-1,-10,-100,1,10,100,1,0,-9,-99,2,11,101,10,9,0,
     +   -90,11,20,110,100,99,90,0,101,110,-56,-1,-2,-11,-101,0,9,99,
     +   -10,-11,-20,-110,-9,0,90,-100,-101,-110,56,-99,-90,0 /
	data mulres1/ 0,0,0,0,0,0,0,0,1,10,100,-1,-10,-100,0,10,100,-24,
     +   -10,-100,24,0,100,-24,16,-100,24,-16,0,-1,-10,-100,1,10,100,0,
     +   -10,-100,24,10,100,-24,0,-100,24,-16,100,-24,16/
	data mulres2/ 0,0,0,0,0,0,0,0,1,10,100,-1,-10,-100,0,10,100,-24,
     +   -10,-100,24,0,100,-24,16,-100,24,-16,0,-1,-10,-100,1,10,100,0,
     +   -10,-100,24,10,100,-24,0,-100,24,-16,100,-24,16/
	data divres1/ 0,0,0,0,0,0,
     +  1,0,0,-1,0,0,10,1,0,-10,-1,0,100,10,1,-100,-10,
     +  -1,-1,0,0,1,0,0,-10,-1,0,10,1,0,-100,-10,-1,100,10,1/
	data divres2/ 0,0,0,0,0,0,
     +  1,0,0,-1,0,0,10,1,0,-10,-1,0,100,10,1,-100,-10,
     +  -1,-1,0,0,1,0,0,-10,-1,0,10,1,0,-100,-10,-1,100,10,1/
	data  modres1/0,0,0,0,0,0,0,1,1,0,1,1,0,0,10,0,
     +  0,10,0,0,0,0,0,0,0,-1,-1,0,-1,-1,0,0,-10,0,0,-10,0,0,0,0,0,0/
	data  modres2/0,0,0,0,0,0,0,1,1,0,1,1,0,0,10,0,
     +  0,10,0,0,0,0,0,0,0,-1,-1,0,-1,-1,0,0,-10,0,0,-10,0,0,0,0,0,0/
	data powres1/ 0,0,0,1,1,1,1,1,10,0,0,1,100,0,0,1,-1,1,1,1,-10,
     +   0,0,1,-100,0,0/
	data powres2/ 0,0,0,1,1,1,1,1,10,0,0,1,100,0,0,1,-1,1,1,1,-10,
     +   0,0,1,-100,0,0/
	call add1(addres1)
	call sub1(subres1)
	call mul1(mulres1)
	call div1(divres1)
	call smod1(modres1)
	call pow1(powres1)
	call add2(addres2)
	call sub2(subres2)
	call mul2(mulres2)
	call div2(divres2)
	call smod2(modres2)
	call pow2(powres2)
	print *, ' TEST PASSED '
	end
	subroutine add1(res)
	integer*1 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i+j
	print *,'ADD1'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine add2(res)
	integer*2 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i+j
	print *,'ADD2'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine sub1(res)
	integer*1 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i-j
	print *,'SUB1'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine sub2(res)
	integer*2 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i-j
	print *,'SUB2'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine mul1(res)
	integer*1 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i*j
	print *,'MUL1'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine mul2(res)
	integer*2 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i*j
	print *,'MUL2'
        i=1
1	if( res(i) .ne. func( i0 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
5	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
10	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
15	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
20	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
25	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
30	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
35	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
40	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
45	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine div1(res)
	integer*1 res(6*6)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i/j
	print *,'DIV1'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine div2(res)
	integer*2 res(6*6)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i/j
	print *,'DIV2'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine smod1(res)
	integer*1 res(7*6)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = mod(i,j)
	print *,'MOD1'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine smod2(res)
	integer*2 res(7*6)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = mod(i,j)
	print *,'MOD2'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im1 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , im100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , im100 ) ) print *,i ; i = i + 1
	end 
	subroutine pow1(res)
	integer*1 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i**j
	print *,'POW1'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	end 
	subroutine pow2(res)
	integer*2 res(7*7)
	integer*1,parameter::i0=0
	integer*1,parameter::i1=1
	integer*1,parameter::i10=10
	integer*1,parameter::i100=100
	integer*1,parameter::im1=-1
	integer*1,parameter::im10=-10
	integer*1,parameter::im100=-100
	integer*1 i,j
	func(i,j) = i**j
	print *,'POW2'
        i=1
	if( res(i) .ne. func( i0 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i0 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i1 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( i100 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im1 , i100 ) ) print *,i ; i = i + 1 
	if( res(i) .ne. func( im10 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im10 , i100 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i0 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i1 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i10 ) ) print *,i ; i = i + 1
	if( res(i) .ne. func( im100 , i100 ) ) print *,i ; i = i + 1
	end 
