	common /com/j,iany
	integer*2 iany
	j=1
	iany=0
	call test
	print *,' TEST PASSED '
	end
	subroutine test
	common /com/j,iany
	integer*2 iany
	integer*2,parameter :: i0 = 0
	integer*2,parameter :: i1 = 1
	integer*2,parameter :: i2 = 2
	integer*2,parameter :: i8 = 8
	integer*2,parameter :: i15 = 15
	integer*2,parameter :: i00fe = z'00fe'
	integer*2,parameter :: iff00 = z'ff00'
	do i=1,j 
	  print *,' BSET 1'
	  if( .not. btest( ibset( i00fe+i1, i0 ) , i0 ) )  print *,' 1 '
	  if( .not. btest( ibset( i00fe+i1, i1 ) , i1 ) )  print *,' 2 '
	  if( .not. btest( ibset( i00fe+i1, i2 ) , i2 ) )  print *,' 3 '
	  if( .not. btest( ibset( i00fe+i1, i8 ) , i8 ) )  print *,' 4 '
	  if( .not. btest( ibset( i00fe+i1, i15) , i15) )  print *,' 5 '
	  if( .not. btest( ibset( i00fe+i1,  0 ) ,  0 ) )  print *,' 6 '
	  if( .not. btest( ibset( i00fe+i1,  1 ) ,  1 ) )  print *,' 7 '
	  if( .not. btest( ibset( i00fe+i1,  2 ) ,  2 ) )  print *,' 8 '
	  if( .not. btest( ibset( i00fe+i1,  8 ) ,  8 ) )  print *,' 9 '
	  if( .not. btest( ibset( i00fe+i1,  15) ,  15) )  print *,' 10 '
	  print *,' BCLR 1'
	  if(       btest( ibclr( i00fe+i1, i0 ) , i0 ) )  print *,' 1 '
	  if(       btest( ibclr( i00fe+i1, i1 ) , i1 ) )  print *,' 2 '
	  if(       btest( ibclr( i00fe+i1, i2 ) , i2 ) )  print *,' 3 '
	  if(       btest( ibclr( i00fe+i1, i8 ) , i8 ) )  print *,' 4 '
	  if(       btest( ibclr( i00fe+i1, i15) , i15) )  print *,' 5 '
	  if(       btest( ibclr( i00fe+i1,  0 ) ,  0 ) )  print *,' 6 '
	  if(       btest( ibclr( i00fe+i1,  1 ) ,  1 ) )  print *,' 7 '
	  if(       btest( ibclr( i00fe+i1,  2 ) ,  2 ) )  print *,' 8 '
	  if(       btest( ibclr( i00fe+i1,  8 ) ,  8 ) )  print *,' 9 '
	  if(       btest( ibclr( i00fe+i1,  15) ,  15) )  print *,' 10 '
	end do
	do i=1,j 
	  print *,' BSET 2'
	  if( .not. btest(ibset(iff00,i0+iany ),i0+iany ))print *,' 1 '
	  if( .not. btest(ibset(iff00,i1+iany ),i1+iany ))print *,' 2 '
	  if( .not. btest(ibset(iff00,i2+iany ),i2+iany ))print *,' 3 '
	  if( .not. btest(ibset(iff00,i8+iany ),i8+iany ))print *,' 4 '
	  if( .not. btest(ibset(iff00,i15+iany),i15+iany))print *,' 5 '
	  if( .not. btest(ibset(iff00, 0+iany ), 0 +iany))print *,' 6 '
	  if( .not. btest(ibset(iff00, 1+iany ), 1 +iany))print *,' 7 '
	  if( .not. btest(ibset(iff00, 2+iany ), 2 +iany))print *,' 8 '
	  if( .not. btest(ibset(iff00, 8+iany ), 8 +iany))print *,' 9 '
	  if( .not. btest(ibset(iff00, 15+iany), 15+iany))print *,' 10 '
	  print *,' BCLR 2'
	  if(       btest(ibclr(iff00,i0+iany ),i0+iany )) print *,' 1 '
	  if(       btest(ibclr(iff00,i1+iany ),i1+iany )) print *,' 2 '
	  if(       btest(ibclr(iff00,i2+iany ),i2+iany )) print *,' 3 '
	  if(       btest(ibclr(iff00,i8+iany ),i8+iany )) print *,' 4 '
	  if(       btest(ibclr(iff00,i15+iany),i15+iany)) print *,' 5 '
	  if(       btest(ibclr(iff00, 0+iany ), 0+iany )) print *,' 6 '
	  if(       btest(ibclr(iff00, 1+iany ), 1+iany )) print *,' 7 '
	  if(       btest(ibclr(iff00, 2+iany ), 2+iany )) print *,' 8 '
	  if(       btest(ibclr(iff00, 8+iany ), 8+iany )) print *,' 9 '
	  if(       btest(ibclr(iff00, 15+iany),15+iany) ) print *,' 10 '
	end do
	end
