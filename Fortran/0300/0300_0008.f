           subroutine sub(a,b,n)
           real*8 a(100),b(100)
           b = 0

           do i=1,n
            a(i) = b(i)
           enddo
           end

      real*8 a(100),b(100)
      call sub(a,b,10)
      print*,'OK'
      end
