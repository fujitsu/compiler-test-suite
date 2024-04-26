      real*4  a(10),e(10)
      real*4 res1(10)/30,30,28,26,22,18,12,8,4,2/
      real*4 res2(10)/150,150,140,130,110,90,60,40,20,10/
      a=0
      e=1
      do k=1,5
      do j=1,k
      do i=1,j+k
         a(i) = 2 + a(i)

         e(i) = 5 * a(i)
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
