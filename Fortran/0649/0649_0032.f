      program main
      call test1()
      call test2()
      call test3()
      call test4()
      print *,'pass'
      end
      subroutine test4()
      integer*1   i,j,k
      i=1 
      j=1
      k=1
      if (ishftc( i, j, k) .ne. 1) call err(4,  1)
      k=2
      if (ishftc( i, 1, 2) .ne. 2) call err(4,  2)
      if (ishftc( i, 1, 3) .ne. 2) call err(4,  3)
      if (ishftc( i,-1, 1) .ne. 1) call err(4,  4)
      if (ishftc( i,-2, 2) .ne. 1) call err(4,  5)
      if (ishftc( i,-3, 3) .ne. 1) call err(4,  6)
      i=2 
      if (ishftc( i, 1, 1) .ne. 2) call err(4,  7)
      if (ishftc( i, 1, 2) .ne. 1) call err(4,  8)
      i=3 
      if (ishftc( i, 1, 1) .ne. 3) call err(4,  9)
      if (ishftc( i, 1, 3) .ne. 6) call err(4, 10)
      if (ishftc( i,-1, 3) .ne. 5) call err(4, 12)
      i=4 
      if (ishftc( i, 1   ) .ne. 8) call err(4, 13)
      if (ishftc( i,-1   ) .ne. 2) call err(4, 14)

      i=-1
      if (ishftc( i, 1, 1) .ne.-1) call err(2, 15)
      if (ishftc( i, 1, 7) .ne.-1) call err(2, 16)
      if (ishftc( i, 2, 7) .ne.-1) call err(2, 17)
      if (ishftc( i, 1, 8) .ne.-1) call err(2, 18)
      if (ishftc( i, 1, 1) .ne.-1) call err(2, 19)
      if (ishftc( i, 1, 1) .ne.-1) call err(2, 20)
      if (ishftc( i, 1, 1) .ne.-1) call err(2, 21)
      end
      subroutine test3()
      integer*2   i,j,k
      i=1 
      j=1
      k=1
      if (ishftc( i, j, k) .ne. 1) call err(3,  1)
      k=2
      if (ishftc( i, 1, 2) .ne. 2) call err(3,  2)
      if (ishftc( i, 1, 3) .ne. 2) call err(3,  3)
      if (ishftc( i,-1, 1) .ne. 1) call err(3,  4)
      if (ishftc( i,-2, 2) .ne. 1) call err(3,  5)
      if (ishftc( i,-3, 3) .ne. 1) call err(3,  6)
      i=2 
      if (ishftc( i, 1, 1) .ne. 2) call err(3,  7)
      if (ishftc( i, 1, 2) .ne. 1) call err(3,  8)
      i=3 
      if (ishftc( i, 1, 1) .ne. 3) call err(3,  9)
      if (ishftc( i, 1, 3) .ne. 6) call err(3, 10)
      if (ishftc( i,-1, 3) .ne. 5) call err(3, 12)
      i=4 
      if (ishftc( i, 1   ) .ne. 8) call err(3, 13)
      if (ishftc( i,-1   ) .ne. 2) call err(3, 14)

      end
      subroutine test2()
      integer*4   i,j,k
      i=1 
      j=1
      k=1
      if (ishftc( i, j, k) .ne. 1) call err(2,  1)
      k=2
      if (ishftc( i, 1, 2) .ne. 2) call err(2,  2)
      if (ishftc( i, 1, 3) .ne. 2) call err(2,  3)
      if (ishftc( i,-1, 1) .ne. 1) call err(2,  4)
      if (ishftc( i,-2, 2) .ne. 1) call err(2,  5)
      if (ishftc( i,-3, 3) .ne. 1) call err(2,  6)
      i=2 
      if (ishftc( i, 1, 1) .ne. 2) call err(2,  7)
      if (ishftc( i, 1, 2) .ne. 1) call err(2,  8)
      i=3 
      if (ishftc( i, 1, 1) .ne. 3) call err(2,  9)
      if (ishftc( i, 1, 3) .ne. 6) call err(2, 10)
      if (ishftc( i,-1, 3) .ne. 5) call err(2, 12)
      i=4 
      if (ishftc( i, 1   ) .ne. 8) call err(2, 13)
      if (ishftc( i,-1   ) .ne. 2) call err(2, 14)

      end
      subroutine test1()
      if (ishftc( 1, 1, 1) .ne. 1) call err(1,  1)
      if (ishftc( 1, 1, 2) .ne. 2) call err(1,  2)
      if (ishftc( 1, 1, 3) .ne. 2) call err(1,  3)
      if (ishftc( 1,-1, 1) .ne. 1) call err(1,  4)
      if (ishftc( 1,-2, 2) .ne. 1) call err(1,  5)
      if (ishftc( 1,-3, 3) .ne. 1) call err(1,  6)
      if (ishftc( 2, 1, 1) .ne. 2) call err(1,  7)
      if (ishftc( 2, 1, 2) .ne. 1) call err(1,  8)
      if (ishftc( 3, 1, 1) .ne. 3) call err(1,  9)
      if (ishftc( 3, 1, 3) .ne. 6) call err(1, 10)
      if (ishftc( 3,-1, 3) .ne. 5) call err(1, 12)
      if (ishftc( 4, 1   ) .ne. 8) call err(1, 13)
      if (ishftc( 4,-1   ) .ne. 2) call err(1, 14)
      end 
      subroutine err(i,j)
      print *,'test-',i,'   no-',j,'   err '
      end 
