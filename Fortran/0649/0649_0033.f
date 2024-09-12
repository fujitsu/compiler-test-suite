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
      if (ibits( i, j, k) .ne. 0) call err(4,  1)
      k=2
      if (ibits( i, 1, 2) .ne. 0) call err(4,  2)
      if (ibits( i, 1, 3) .ne. 0) call err(4,  3)
      if (ibits( i, 1, 1) .ne. 0) call err(4,  4)
      if (ibits( i, 2, 2) .ne. 0) call err(4,  5)
      if (ibits( i, 3, 3) .ne. 0) call err(4,  6)
      i=2 
      if (ibits( i, 1, 1) .ne. 1) call err(4,  7)
      if (ibits( i, 1, 2) .ne. 1) call err(4,  8)
      i=3 
      if (ibits( i, 1, 1) .ne. 1) call err(4,  9)
      if (ibits( i, 1, 3) .ne. 1) call err(4, 10)
      if (ibits( i, 1, 3) .ne. 1) call err(4, 12)
      i=4 

      i=-1
      if (ibits( i, 1, 1) .ne. 1) call err(4, 15)
      if (ibits( i, 1, 7) .ne.127) call err(4, 16)
      if (ibits( i, 2, 6) .ne.63) call err(4, 17)
      if (ibits( i, 1, 7) .ne.127 ) call err(4, 18)
      if (ibits( i, 1, 2) .ne. 3) call err(4, 19)
      if (ibits( i, 1, 3) .ne. 7) call err(4, 20)
      if (ibits( i, 1, 4) .ne.15) call err(4, 21)
      i=-1
      if (ibits( i, 7, 1) .ne.1) call err(4, 22)

      end
      subroutine test3()
      integer*2   i,j,k
      i=1 
      j=1
      k=1
      if (ibits( i, j, k) .ne. 0) call err(3,  1)
      k=2
      if (ibits( i, 1, 2) .ne. 0) call err(3,  2)
      if (ibits( i, 1, 3) .ne. 0) call err(3,  3)
      if (ibits( i, 1, 1) .ne. 0) call err(3,  4)
      if (ibits( i, 2, 2) .ne. 0) call err(3,  5)
      if (ibits( i, 3, 3) .ne. 0) call err(3,  6)
      i=2 
      if (ibits( i, 1, 1) .ne. 1) call err(3,  7)
      if (ibits( i, 1, 2) .ne. 1) call err(3,  8)
      i=3 
      if (ibits( i, 1, 1) .ne. 1) call err(3,  9)
      if (ibits( i, 1, 3) .ne. 1) call err(3, 10)
      if (ibits( i, 1, 3) .ne. 1) call err(3, 12)
      i=4 

      end
      subroutine test2()
      integer*4   i,j,k
      i=1 
      j=1
      k=1
      if (ibits( i, j, k) .ne. 0) call err(2,  1)
      k=2
      if (ibits( i, 1, 2) .ne. 0) call err(2,  2)
      if (ibits( i, 1, 3) .ne. 0) call err(2,  3)
      if (ibits( i, 1, 1) .ne. 0) call err(2,  4)
      if (ibits( i, 2, 2) .ne. 0) call err(2,  5)
      if (ibits( i, 3, 3) .ne. 0) call err(2,  6)
      i=2 
      if (ibits( i, 1, 1) .ne. 1) call err(2,  7)
      if (ibits( i, 1, 2) .ne. 1) call err(2,  8)
      i=3 
      if (ibits( i, 1, 1) .ne. 1) call err(2,  9)
      if (ibits( i, 1, 3) .ne. 1) call err(2, 10)
      if (ibits( i, 1, 3) .ne. 1) call err(2, 12)

      end
      subroutine test1()
      if (ibits( 1, 1, 1) .ne. 0) call err(1,  1)
      if (ibits( 1, 1, 2) .ne. 0) call err(1,  2)
      if (ibits( 1, 1, 3) .ne. 0) call err(1,  3)
      if (ibits( 1, 1, 1) .ne. 0) call err(1,  4)
      if (ibits( 1, 2, 2) .ne. 0) call err(1,  5)
      if (ibits( 1, 3, 3) .ne. 0) call err(1,  6)
      if (ibits( 2, 1, 1) .ne. 1) call err(1,  7)
      if (ibits( 2, 1, 2) .ne. 1) call err(1,  8)
      if (ibits( 3, 1, 1) .ne. 1) call err(1,  9)
      if (ibits( 3, 1, 3) .ne. 1) call err(1, 10)
      if (ibits( 3, 1, 3) .ne. 1) call err(1, 12)
      if (ibits( -1, 1, 31).ne. 2147483647) call err(1, 13)
      if (ibits( -1,31,  1).ne. 1) call err(1, 14)
      end 
      subroutine err(i,j)
      print *,'test-',i,'   no-',j,'   err '
      end 
