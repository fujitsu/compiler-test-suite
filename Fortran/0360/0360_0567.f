      call i4_distance()
      call i4_distance2()
      call r4_list()
      call r4_mask()

      call i8_distance()
      call i8_distance2()
      call r8_list()
      call r8_mask()
      write(6,*) "ok"
      end

      subroutine i4_distance()
      integer a(256)

      do i=1,256,2
         a(i) = 1
      enddo
      call dummyi4(a)
      end

      subroutine i4_distance2()
      integer a(2,256)

      do i=1,256
         a(2,i) = 1
      enddo
      call dummyi4(a)
      end

      subroutine r4_list()
      real a(256)
      integer list(256)

      do i=1,256
         list(i) = i
      enddo

      do i=1,256
         a(list(i)) = 1
      enddo
      call dummyr4(a)
      end

      subroutine r4_mask()
      real a(256)
      integer mask(256)

      do i=1,256
         mask(i) =mod(i,2)
      enddo

      do i=1,256
         if (mask(i) .gt. 0) then
            a(i) = 1
         endif
      enddo
      call dummyr4(a)
      end

      subroutine dummyi4(a)
      integer a(256)
      end
      subroutine dummyr4(a)
      real a(256)
      end

      subroutine i8_distance()
      integer*8 a(256)

      do i=1,256,2
         a(i) = 1
      enddo
      call dummyi8(a)
      end

      subroutine i8_distance2()
      integer*8 a(2,256)

      do i=1,256
         a(2,i) = 1
      enddo
      call dummyi8(a)
      end

      subroutine r8_list()
      real*8 a(256)
      integer list(256)
      do i=1,256
         list(i) = i
      enddo

      do i=1,256
         a(list(i)) = 1
      enddo
      call dummyr8(a)
      end

      subroutine r8_mask()
      real*8 a(256)
      integer mask(256)
      do i=1,256
         mask(i) =mod(i,2)
      enddo

      do i=1,256
         if (mask(i) .lt. 1) then
            a(i) = 1
         endif
      enddo
      call dummyr8(a)
      end

      subroutine dummyi8(a)
      integer*8 a(256)
      end
      subroutine dummyr8(a)
      real*8 a(256)
      end


      
