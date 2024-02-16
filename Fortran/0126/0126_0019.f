
      real*8 a(32),b(32),c(32),d(32),resa(32)
      common /sbm_area/a,b,c,d
      common /res_area/resa
      call init
      do i=1,32
         a(i) = b(i) - c(i) * d(i)
      enddo

      do i=1,32
         if (a(i).ne.resa(i) ) goto 20
      enddo

      write(6,*) ' ## nmsub OK ## '
      goto 10
 20   write(6,*) ' ## nmsub NG ## '
      write(6,*) a
      write(6,*) d
 10   continue
      end

      subroutine init
      real*8 a(32),b(32),c(32),d(32)
      real*8 resa(32)
      common /sbm_area/a,b,c,d
      common /res_area/resa

      do i=1,32
         a(i) = 0
         b(i) = i
         c(i) = i+2
         d(i) = -i
         resa(i) = i-(i+2) * (-i)
      enddo
      return
      end
