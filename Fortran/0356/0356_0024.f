      integer a(100),b(100)
      do i=1,100
         a(i) = i
         b(i) = 101-i
      enddo
      call sub2(a,b,100)
      call check2(a,100)
      write(6,*) "ok"
      end

      subroutine sub2(a,b,n)
      integer a(n),b(n)
      do i=1,n
         a(b(i)) = 1
      enddo
      end
      subroutine check2(c,n)
      integer c(n)
      do i=1,n
         if (c(i) .ne. 1) then
            write(6,*) "ng2"
            write(6,*) c
            stop
         endif
      enddo
      return
      end
