      call c8
      call c16
      end

      subroutine c8
      complex*8 a(32),b(32),c(32),d(32)
      complex*8 xa(32)
      common/com_areab/a,b,c,d
      do i=1,32
         a(i) = 0
         b(i) = cmplx(i,-i)
         xa(i) = b(i)
         c(i) = 0
         d(i) = cmplx(i+100,i-10)
      enddo

      call sub2

      do i=1,32
         if (a(i).ne.xa(i) ) goto 11
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
      complex*8 a(32),b(32),c(32),d(32)
      real*4 x(32)
      common/com_areab/a,b,c,d
      do i = 1,32
         a(i) = b(i)
         x(i) = d(i)
      end do
      do i=1,32
         if (x(i) .ne. 100+i) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) a
 10   continue
      end 

      subroutine c16
      complex*16 a(32),b(32),c(32),d(32)
      complex*16 xa(32)
      common/com_area/a,b,c,d
      do i=1,32
         a(i) = 0
         b(i) = dcmplx(i,-i)
         xa(i) = b(i)
         c(i) = 0
         d(i) = dcmplx(i+100,i-10)
      enddo

      call sub1

      do i=1,32
         if (a(i).ne.xa(i) ) goto 11
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
      complex*16 a(32),b(32),c(32),d(32)
      real*8 x(32)
      common/com_area/a,b,c,d
      do i = 1,32
         a(i) = b(i)
         x(i) = d(i)
      end do
      do i=1,32
         if (x(i) .ne. 100+i) goto 11
      enddo
      write(6,*) ' Ok '
      goto 10
 11   write(6,*) ' NG '
      write(6,*) a
 10   continue
      end 
