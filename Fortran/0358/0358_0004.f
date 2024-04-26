      real*4  a(10),e(10)
      real*4 res1(10)/1100,990,880,770,660,550,440,330,220,110/
      real*4 res2(10)/5500,4950,4400,3850,3300,2750,2200,1650,1100,550/
      a=0
      e(1) = 1
      e(2) = 1
      e(3) = 1
      e(4) = 1
      e(5) = 1
      e(6) = 1
      e(7) = 1
      e(8) = 1
      e(9) = 1
      e(10) = 1
      do ll=1,10
      do k=1,10
      do j=1,k
      do i=1,ll
         a(i) = 2 + a(i)

         e(i) = 5 * a(i)
      enddo
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
