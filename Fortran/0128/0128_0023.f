      program main
      call sub1(-1)
      call sub2(1)
      call sub3(2)
      call sub4(8)
      call sub5(10)
      call sub6(9)
      call sub7(10)
      call sub8(10)
      call sub9(10)
      print *,'ok'
      end
      
      subroutine sub1(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.1)then
         print *,'sub1.ng=',r
      endif
      return
      end
      
      subroutine sub2(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.2)then
         print *,'sub2.ng=',r
      endif
      return
      end

      subroutine sub3(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.3)then
         print *,'sub3.ng=',r
      endif
      return
      end

      subroutine sub4(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.9)then
         print *,'sub4.ng=',r
      endif
      return
      end

      subroutine sub5(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.11)then
         print *,'sub5.ng=',r
      endif
      return
      end

      subroutine sub6(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.10)then
         print *,'sub6.ng=',r
      endif
      return
      end

      subroutine sub7(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.11)then
         print *,'sub7.ng=',r
      endif
      return
      end

      subroutine sub8(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.11)then
         print *,'sub8.ng=',r
      endif
      return
      end

      subroutine sub9(L)
      integer i
      integer L
      integer r
      integer a(10),b(10)
      b=0
      call init(a)
      do i=1,L
         b(i)=a(i)
      enddo
      r=0
      call check(b,r)
      if(r.ne.11)then
         print *,'sub9.ng=',r
      endif
      return
      end

      subroutine init(a)
      integer a(10)
      a(1)=3
      a(2)=44
      a(3)=5
      a(4)=66
      a(5)=7
      a(6)=88
      a(7)=9
      a(8)=11
      a(9)=2
      a(10)=33
      return
      end

      subroutine check(b,r)
      integer b(10)
      integer a(10)
      integer i
      integer r
      a(1)=3
      a(2)=44
      a(3)=5
      a(4)=66
      a(5)=7
      a(6)=88
      a(7)=9
      a(8)=11
      a(9)=2
      a(10)=33
      do i=1,10
         if(a(i).ne.b(i))then
            exit
         endif
      enddo
      r = i
      return
      end
