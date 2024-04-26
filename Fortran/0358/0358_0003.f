      real*4  a(10),e(10)
      a=0
      n = ifunc(10)
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
      do k=1,10
      do j=1,k
      do i=1,n
         a(i) = 2 + a(i)

         e(i) = 5 * a(i)
      enddo
      enddo
      enddo
      do i=1,10
         if (a(i).ne.110 .or. e(i).ne.550) then
            write(6,*) "ng"
            write(6,*) "110 .ne. ",a
            write(6,*) "550 .ne. ",e
            stop
         endif
      enddo
      write(6,*) "ok"
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
