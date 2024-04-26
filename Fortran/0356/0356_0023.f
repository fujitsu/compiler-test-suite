      integer a(100),b(100),c(100)
      do i=1,100
         a(i) = i
         b(i) = 101-i
         c(i) = 0
      enddo
      call sub1(a,b,c,100)
      call check1(c,100)
      write(6,*) "ok"
      end

      subroutine sub1(a,b,c,n)
      integer a(n),b(n),c(n)
      do i=1,n
         c(i) = a(b(i))
      enddo
      end

      subroutine check1(a,n)
      integer a(n)
      do i=1,n
         if (a(i) .ne. 101-i) then
            write(6,*) "ng1"
            write(6,*) a
            stop
         endif
      enddo
      return
      end
