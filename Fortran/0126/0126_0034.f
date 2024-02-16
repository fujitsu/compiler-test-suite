
      real*8 a(32),b(32),c(32),rr
      common /sbm_area/a,b,c

      call init
      rr = 0
      do i=1,32
         rr = rr + b(i)*c(i)
      enddo

      if (rr .eq. -32) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) -32 , rr
      endif
      end

      subroutine init
      real*8 a(32),b(32),c(32)
      common /sbm_area/a,b,c

      n = 1
      do i=1,32
         a(i) = 0
         b(i) = i*n
         n = n*(-1)
         c(i) = 2
      enddo
      return
      end


