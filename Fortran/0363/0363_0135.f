      program main
      real*8 a(65*2),x(65)
      call init(a,x,65)
      do i=1,2
        call test(a,x,65)
      enddo
      do i=1,65
         if(x(i) .ne. (65*2)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,x,n1)
      real*8  a(65*2),x(n1)

      do i=1,65*2
        a(i) = 1.0
      enddo

      do i=1,65
        x(i) = 0.0
      enddo
      end

      subroutine test(a,x,n1)
      real*8 a(65*2),x(n1)
      
      do j=1,65
         do i=1,65
            x(j)=x(j)+a(i+j)
         end do
      end do
      
      end
