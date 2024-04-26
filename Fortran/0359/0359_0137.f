      call c8
      call c16
      end

      subroutine c8
      complex*8 a(32),b(32),c(32),d(32),e(32),f(32)
      complex*8 xa(32),xc(32)
      common/com_areab/a,b,c,d,e,f
      do i=1,32
         a(i) = 0
         e(i) = cmplx(i,-i*2)
         b(i) = cmplx(i,-i)
         xa(i) = b(i)+e(i)
         c(i) = 0
         d(i) = cmplx(i+100,i-10)
         f(i) = cmplx(i+130,i-40)
         xc(i) = d(i)-f(i)
      enddo

      call sub2

      do i=1,32
         if (a(i).ne.xa(i) .or. c(i).ne.xc(i)) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
 10   continue
      end

      subroutine sub2
      complex*8 a(32),b(32),c(32),d(32),e(32),f(32)
      real*4 x(32),y(32)
      common/com_areab/a,b,c,d,e,f
      y = (/(i,i=1,32)/)
      do i = 1,32
         a(i) = b(i) + e(i)
         c(i) = d(i) - f(i)
         x(i) = y(i) - 3
      end do
      do i=1,32
         if (x(i) .ne. i-3) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) x
 10   continue
      end 

      subroutine c16
      complex*16 a(32),b(32),c(32),d(32),e(32),f(32)
      complex*16 xa(32),xc(32)
      common/com_area/a,b,c,d,e,f
      do i=1,32
         a(i) = 0
         e(i) = dcmplx(i,-i*2)
         b(i) = dcmplx(i,-i)
         xa(i) = b(i)+e(i)
         c(i) = 0
         d(i) = dcmplx(i+100,i-10)
         f(i) = dcmplx(i+130,i-40)
         xc(i) = d(i)-f(i)
      enddo

      call sub1

      do i=1,32
         if (a(i).ne.xa(i) .or. c(i).ne.xc(i)) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
 10   continue
      end

      subroutine sub1
      complex*16 a(32),b(32),c(32),d(32),e(32),f(32)
      real*8 x(32),y(32)
      common/com_area/a,b,c,d,e,f
      y = (/(i,i=1,32)/)
      do i = 1,32
         a(i) = b(i) + e(i)
         c(i) = d(i) - f(i)
         x(i) = y(i) - 3
      end do
      do i=1,32
         if (x(i) .ne. i-3) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) x
 10   continue
      end 
