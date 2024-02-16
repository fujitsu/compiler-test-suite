      call sub1
      call sub2
      call sub3
      call sub4(10)
      call sub5
      call sub6
      print *,'ok'
      end

      subroutine sub1
      integer j
      integer a(10)
      integer sum
      sum=0
      j=0
      call init(a)
      do i=1,10
         j=j+1
         sum=sum+a(i)*j
 10   enddo
      if(sum.ne.310)then
         print *,'ng',sum
      endif
      if(j.ne.10)then
         print *,'ng'
      endif
      return
      end

      subroutine sub2
      integer j
      integer a(10)
      integer sum
      sum=0
      call init(a)
      j=0
      do i=1,10
         j=j+1
         sum=sum+a(i)*j
 20   enddo
      if(sum.ne.310)then
         print *,'ng'
      endif
      if(j.ne.10)then
         print *,'ng'
      endif
      return
      end

      subroutine sub3
      integer j
      integer a(10)
      integer sum
      sum=0
      call init(a)
      j=0
      do i=1,9
         j=j+1
         sum=sum+a(i)*j
 30   enddo
      if(sum.ne.300)then
         print *,'ng',sum
      endif
      if(j.ne.9)then
         print *,'ng'
      endif
      return
      end

      subroutine sub4(L)
      integer L
      integer j
      integer a(10)
      integer sum
      sum=0
      call init(a)
      j=0
      do i=1,L
         j=j+1
         sum=sum+a(i)*j
 40   enddo
      if(sum.ne.310)then
         print *,'ng'
      endif
      if(j.ne.10)then
         print *,'ng'
      endif
      return
      end

      subroutine sub5
      integer j
      integer a(10)
      integer sum
      sum=0
      call init(a)
      j=0
      do i=1,10
         j=j+1
         sum=sum+a(i)*j
 50   enddo
      if(sum.ne.310)then
         print *,'ng'
      endif
      if(j.ne.10)then
         print *,'ng'
      endif
      return
      end

      subroutine sub6
      integer j
      integer a(10)
      integer sum
      sum=0
      call init(a)
      j=0
      do i=1,10
         j=j+1
         sum=sum+a(i)*j
 10   enddo
      if(sum.ne.310)then
         print *,'ng'
      endif
      if(j.ne.10)then
         print *,'ng'
      endif
      return
      end

      subroutine init(a)
      integer a(10)
      a(1) = 6;
      a(2) = 2;
      a(3) = 7;
      a(4) = 3;
      a(5) = 8;
      a(6) = 4;
      a(7) = 9;
      a(8) = 5;
      a(9) = 10;
      a(10) = 1;
      return
      end
