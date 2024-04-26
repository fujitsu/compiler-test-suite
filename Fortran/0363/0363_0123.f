      program main
      real*16 r16a(65),r16b(65),r16c(65)
      call init(r16a,r16b,r16c,65)
      do i=1,2
        call test(r16a,r16b,r16c,65)
      enddo
      do i=1,65
         if(r16a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(r16a,r16b,r16c,n1)
      real*16  r16a(n1),r16b(n1),r16c(n1)

      do i=1,65
        r16a(i) = 0.0
        r16b(i) = i
        r16c(i) = 1.0
      enddo
      end

      subroutine test(r16a,r16b,r16c,n1)
      real*16 r16a(n1),r16b(n1),r16c(n1)
      
      do i=1,65
        r16a(i) = r16b(i) + r16c(i)
      enddo
      
      end
