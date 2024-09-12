      integer i
      real a(1000000)
      real b(1000000) /1000000*1.0/

      do i=1,1000000
        a(i) = b(i)
      enddo

      write(6,*) a(1000000)
      end
