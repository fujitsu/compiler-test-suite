      real*8 a(16),b(16)
      real*8 res(16)
      common /sbm_area/a,b
      common /res_area/res

      call init
      do i=1,16
         a(i) = abs(b(i))
      enddo

      do i=1,16
         if (a(i).ne.res(i)) goto 10
      enddo
      write(6,*) ' ## abs ok ## '
      goto 20
 10   write(6,*) ' ## abs ng ## '
      write(6,*) a
 20   continue
      end

      subroutine init
      real*8 a(16),b(16),res(16)
      common /sbm_area/a,b
      common /res_area/res

      n = 1
      do i=1,16
         a(i) = 0
         b(i) = i*n
         n = n*(-1)
         res(i) = i
      enddo
      return
      end


