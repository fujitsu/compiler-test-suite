      program main
      real*4 r4a(65),r4b(65),r4c(65)
      call init(r4a,r4b,r4c,65)
      do i=1,2
        call test(r4a,r4b,r4c,65)
      enddo
      do i=1,65
         if(r4a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(r4a,r4b,r4c,n1)
      real*4  r4a(n1),r4b(n1),r4c(n1)

      do i=1,65
        r4a(i) = 0.0
        r4b(i) = i
        r4c(i) = 1.0
      enddo
      end

      subroutine test(r4a,r4b,r4c,n1)
      real*4 r4a(n1),r4b(n1),r4c(n1)
      
      do i=1,65
        r4a(i) = r4b(i) + r4c(i)
      enddo
      
      end
