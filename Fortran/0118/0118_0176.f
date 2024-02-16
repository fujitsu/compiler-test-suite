      real*8 a(100),b(100),c(100),aa(100)
      logical check
      do i=1,100
         b(i) = i
         c(i) = 3
      enddo
      a=0
      aa=0
      do i=100,1,-1
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-1
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-2
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-2
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-3
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-3
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-4
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-4
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-5
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-5
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-6
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-6
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-7
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-7
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=100,1,-8
         a(i) = b(i) + c(i)
      enddo
      do i=100,1,-8
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif

      a=0
      aa=0
      do i=1,100,2
         a(i) = b(i) + c(i)
      enddo
      do i=1,100,2
         aa(i) = b(i) + c(i)
      enddo
      if (check(a,aa)) then
         stop
      endif
      write(6,*) 'ok'
      end

      logical function check(a,aa)
      real*8 a(100),aa(100)
      do i=1,100
         if (a(i) .ne. aa(i)) then
            write(6,*) 'ng'
            write(6,1) aa
            write(6,*)
            write(6,1) a
            check=.true.
         endif
      enddo
 1    format(10f8.2)
      check = .false.
      return
      end

      
      
      
