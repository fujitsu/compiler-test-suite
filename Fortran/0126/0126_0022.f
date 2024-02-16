
      complex*16 a(16),b(16),c(16),d(16),resa(16),resd(16)
      common /sbm_area/a,b,c,d
      common /res_area/resa,resd
      call init
      do i=1,16
         a(i) = b(i) + (2.,3.)
         d(i) = (2.,3.) - c(i) + (3.,4.)
      enddo

      do i=1,16
         if (a(i).ne.resa(i) .or. d(i).ne.resd(i)) goto 20
      enddo

      write(6,*) ' ## OK ## '
      goto 10
 20   write(6,*) ' ## NG ## '
      write(6,*) a
      write(6,*) d
 10   continue
      end

      subroutine init
      complex*16 a(16),b(16),c(16),d(16),resa(16),resd(16)
      common /sbm_area/a,b,c,d
      common /res_area/resa,resd

      do i=1,16
         d(i) = 0
         a(i) = 0
         b(i) = i
         c(i) = i
         resa(i) = i+ (2.,3.)
         resd(i) = (2.,3.)-i+ (3.,4.)
      enddo
      return
      end
