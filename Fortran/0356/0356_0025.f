      integer a(100),d(2,100)
      do i=1,100
         a(i) = i
         d(2,i) = i
      enddo
      call sub4(a,d,100)
      call check4(a,100)
      write(6,*) "ok"
      end

      subroutine sub4(a,b,n)
      integer a(n),b(2,n)
      do i=1,n
         a(i) = b(2,i)
      enddo
      end

      subroutine check4(c,n)
      integer c(n)
      do i=1,n
         if (c(i) .ne. i) then
            write(6,*) "ng4"
            write(6,*) c
            stop
         endif
      enddo
      return
      end
