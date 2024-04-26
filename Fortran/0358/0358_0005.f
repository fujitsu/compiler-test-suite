      real*4  a(10),e(10)
      real*4  b(10)/10*1/
      real*4 res1(10)/110,9*108/
      real*4 res2(10)/550,9*540/
      n = -1
      a=0
      e=1
      do k=1,10
         n = b(1)
         do j=1,k
            do i=1,n
               a(i) = 2 + a(i)

               e(i) = 5 * a(i)
               b(i) = 11-i
            enddo
         enddo
      enddo
      do i=1,10
         if (a(i).ne.res1(i) .or. e(i).ne.res2(i)) then
            write(6,*) "ng"
            write(6,*) a
            write(6,*) res1
            write(6,*) e
            write(6,*) res2
            stop
         endif
      enddo
      write(6,*) "ok"
      end
