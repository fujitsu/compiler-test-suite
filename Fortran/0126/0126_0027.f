
      complex*16 a(16),b(16),c(16),resa(16),resc(16)
      real*8 x(16)
      common /sbm_area/a,b,c,x
      common /res_area/resa,resc
      call init

      do i=1,16
         a(i) = x(i) + (2.,3.)
         c(i) = b(i) + (2.,3.)
      enddo

      do i=1,16
         if (a(i).ne.resa(i) .or. c(i).ne.resc(i)) goto 20
      enddo

      write(6,*) ' ## OK ## '
      goto 10
 20   write(6,*) ' ## NG ## '
      write(6,*) a
      write(6,*) c
 10   continue
      end

      subroutine init
      complex*16 a(16),b(16),c(16),resa(16),resc(16)
      real*8 x(16)
      common /sbm_area/a,b,c,x
      common /res_area/resa,resc

      do i=1,16
         x(i) = i
         a(i) = 0
         b(i) = i
         c(i) = i
         resa(i) = i+ (2.,3.)
         resc(i) = i+ (2.,3.)
      enddo
      return
      end
