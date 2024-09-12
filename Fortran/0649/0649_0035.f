      program main
      call sub1()         
      call sub2()         
      print *,'pass'
      end

      subroutine sub2()
      integer a(10),b(10),c(10),d(10)
      data b /1,2,3,4,5,6,7,8,9,10/
      data c /10*1/
      data d /10*30/
      i=1                    
      j=3                    
      a= ibits (b,i,j)       
      if (a( 1) .ne.  0 ) call err(2, 1)
      if (a( 2) .ne.  1 ) call err(2, 2)
      if (a( 3) .ne.  1 ) call err(2, 3)
      if (a( 4) .ne.  2 ) call err(2, 4)
      if (a( 5) .ne.  2 ) call err(2, 5)
      if (a( 6) .ne.  3 ) call err(2, 6)
      if (a( 7) .ne.  3 ) call err(2, 7)
      if (a( 8) .ne.  4 ) call err(2, 8)
      if (a( 9) .ne.  4 ) call err(2, 9)
      if (a(10) .ne.  5 ) call err(2,10)
      end

      subroutine sub1()
      integer a(10),b(10),c(10),d(10)
      data b /1,2,3,4,5,6,7,8,9,10/
      data c /10*1/
      data d /10*30/
      i=1                    
      j=31                   
      a= ishftc(b,i,j)       
      if (a( 1) .ne.  2 ) call err(1, 1)
      if (a( 2) .ne.  4 ) call err(1, 2)
      if (a( 3) .ne.  6 ) call err(1, 3)
      if (a( 4) .ne.  8 ) call err(1, 4)
      if (a( 5) .ne. 10 ) call err(1, 5)
      if (a( 6) .ne. 12 ) call err(1, 6)
      if (a( 7) .ne. 14 ) call err(1, 7)
      if (a( 8) .ne. 16 ) call err(1, 8)
      if (a( 9) .ne. 18 ) call err(1, 9)
      if (a(10) .ne. 20 ) call err(1,10)
      a= ishftc(c,b,d)       
      if (a( 1) .ne.  2 ) call err(1,11)
      if (a( 2) .ne.  4 ) call err(1,12)
      if (a( 3) .ne.  8 ) call err(1,13)
      if (a( 4) .ne. 16 ) call err(1,14)
      if (a( 5) .ne. 32 ) call err(1,15)
      if (a( 6) .ne. 64 ) call err(1,16)
      if (a( 7) .ne.128 ) call err(1,17)
      if (a( 8) .ne.256 ) call err(1,18)
      if (a( 9) .ne.512 ) call err(1,19)
      if (a(10) .ne.1024) call err(1,20)
      a= ishftc(1+b-1,i,j-1)       
      if (a( 1) .ne.  2 ) call err(1,21)
      if (a( 2) .ne.  4 ) call err(1,22)
      if (a( 3) .ne.  6 ) call err(1,23)
      if (a( 4) .ne.  8 ) call err(1,24)
      if (a( 5) .ne. 10 ) call err(1,25)
      if (a( 6) .ne. 12 ) call err(1,26)
      if (a( 7) .ne. 14 ) call err(1,27)
      if (a( 8) .ne. 16 ) call err(1,28)
      if (a( 9) .ne. 18 ) call err(1,29)
      if (a(10) .ne. 20 ) call err(1,30)
      a= ishftc(b+c-1*b,b,d)       
      if (a( 1) .ne.  2 ) call err(1,31)
      if (a( 2) .ne.  4 ) call err(1,32)
      if (a( 3) .ne.  8 ) call err(1,33)
      if (a( 4) .ne. 16 ) call err(1,34)
      if (a( 5) .ne. 32 ) call err(1,35)
      if (a( 6) .ne. 64 ) call err(1,36)
      if (a( 7) .ne.128 ) call err(1,37)
      if (a( 8) .ne.256 ) call err(1,38)
      if (a( 9) .ne.512 ) call err(1,39)
      if (a(10) .ne.1024) call err(1,40)
      end
      subroutine err(i,j)
      print *,'sub',i,'   err    ',j 
      end
