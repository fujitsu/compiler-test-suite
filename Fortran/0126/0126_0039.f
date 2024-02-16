      complex*16 a(16),b(16),rr(15)
      common /sbm_area/a,b

      rr(15) = 0
      call init
      rr = 0
      do i=1,16
         rr(15) = a(i) + b(i) + (2.,3.)
      enddo

      if (rr(15) .eq. (36.,3.)) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) (36.,3.) , rr(15)
      endif
      end

      subroutine init
      complex*16 a(16),b(16)
      common /sbm_area/a,b

      do i=1,16
         a(i) = i+2
         b(i) = i
      enddo
      return
      end


