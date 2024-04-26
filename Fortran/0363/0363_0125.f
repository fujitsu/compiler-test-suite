      program main
      real*8 r8a(65),r8b(65),r8c(65)
      call init(r8a,r8b,r8c,65)
      do i=1,2
        call test(r8a,r8b,r8c,65)
      enddo
      do i=1,65
         if(r8a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(r8a,r8b,r8c,n1)
      real*8  r8a(n1),r8b(n1),r8c(n1)

      do i=1,65
        r8a(i) = 0.0
        r8b(i) = i
        r8c(i) = 1.0
      enddo
      end

      subroutine test(r8a,r8b,r8c,n1)
      real*8 r8a(n1),r8b(n1),r8c(n1)
      
      do i=1,65
        r8a(i) = r8b(i) + r8c(i)
      enddo
      
      end
