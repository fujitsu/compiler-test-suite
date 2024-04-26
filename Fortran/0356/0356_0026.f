      integer a(100)
      do i=1,100
         a(i) = i
      enddo
      call sub3(a,100)
      call check3(a,100)
      write(6,*) "ok"
      end

      subroutine sub3(a,n)
      integer a(n)
      do i=1,n,2
         a(i) = a(i) + 2
      enddo
      end
      subroutine check3(c,n)
      integer c(n)
      do i=1,n,2
         if (c(i) .ne. i+2 .or. c(i+1) .ne. i+1) then
            write(6,*) "ng3"
            write(6,*) c
            stop
         endif
      enddo
      return
      end
