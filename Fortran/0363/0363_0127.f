      program main
      integer*1 a(35*2),x(35)
      call init(a,x,35)
      do i=1,2
        call test(a,x,35)
      enddo
      do i=1,35
         if(x(i) .ne. (35*2)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,x,n1)
      integer*1  a(35*2),x(n1)

      do i=1,35*2
        a(i) = 1
      enddo

      do i=1,35
        x(i) = 0
      enddo
      end

      subroutine test(a,x,n1)
      integer*1 a(35*2),x(n1)
      
      do j=1,35
         do i=1,35
            x(j)=x(j)+a(i+j)
         end do
      end do
      
      end
