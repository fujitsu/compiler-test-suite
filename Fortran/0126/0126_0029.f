
      complex*16  a(16),b(16)
      real *8     res(16),c(16)
      common /sbm_area/a,b,c
      common /res_area/res

      call init

      do i=1,16
         c(i) = cdabs(a(i)+b(i))
      enddo

      do i=1,16
         if (abs(c(i)-res(i)) .gt. 0.005) goto 20
      enddo

      write(6,*) ' OK '
      goto 10
 20   write(6,*) ' NG '
      write(6,*) c
      write(6,*) res
 10   continue
      end

      subroutine init
      complex*16 a(16),b(16)
      real*8 res(16),c(16)
      common /sbm_area/a,b,c
      common /res_area/res

      j = 1
      do i=1,16
         a(i) = cmplx(i,i+2)
         b(i) = j
         c(i)  = 0
         res(i) = cabs(cmplx(i,i+2)+j)
         j = j * (-1)
      enddo
      return
      end
