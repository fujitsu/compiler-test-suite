      subroutine sub2(a,b,m,n)
      complex*4 a(1:n),b(1:n)
      do i=m,n
         b(i) = b(i) + a(i)
      enddo
      end

      complex*4 a(100),b(100)
      complex*8 xx
      do i=1,100
         a(i) = cmplx(i,i)
         b(i) = cmplx(2,-2)
      enddo
      call sub2(a,b,1,100)
      do i=1,100
         if (b(i) .ne. cmplx(i+2, i-2)) then
            xx = b(i)
            write(6,*) i,xx
            stop
         endif
      enddo
      write(6,*) "ok"
      end
