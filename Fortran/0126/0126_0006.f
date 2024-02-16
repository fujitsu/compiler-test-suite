
      complex*16 a(32),b(32),c(32),resa(32)
      common /sbm_area/a,b,c
      common /res_area/resa
      call init
      do i=1,32
         a(i) = b(i) + conjg(c(i))
      enddo

      do i=1,32
         if (a(i).ne.resa(i) ) goto 20
      enddo

      write(6,*) ' ## conjg OK ## '
      goto 10
 20   write(6,*) ' ## conjg NG ## '
      write(6,*) a
      write(6,*) resa
 10   continue
      end

      subroutine init
      complex*16 a(32),b(32),c(32)
      complex*16 resa(32)
      common /sbm_area/a,b,c
      common /res_area/resa

      do i=1,32
         a(i) = 0
         b(i) = i
         c(i) = cmplx(i,2)
         resa(i) = i + conjg(cmplx(i,2))
      enddo
      return
      end
