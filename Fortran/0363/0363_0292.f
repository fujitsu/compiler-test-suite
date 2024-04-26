      program main
      integer*1 l1a(65),l1b(65),l1c(65),res(65)
      call init(l1a,l1b,l1c,res,65)
      do i=1,2
        call test(l1a,l1b,l1c,65)
      enddo
      do i=1,65
         if(l1a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(l1a,l1b,l1c,res,n1)
      integer*1  l1a(n1),l1b(n1),l1c(n1),res(n1)

      do i=1,65
         l1a(i) = 0
         l1b(i) = i
         l1c(i) = i
         res(i) = i * i
      enddo
      end

      subroutine test(l1a,l1b,l1c,n1)
      integer*1 l1a(n1),l1b(n1),l1c(n1)
      
      do i=1,65
        l1a(i) = l1b(i) * l1c(i)
      enddo
      
      end








