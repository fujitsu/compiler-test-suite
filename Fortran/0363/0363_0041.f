      program main
      real*4 i1a(65),i1b(65),i1c(65)
      call init(i1a,i1b,i1c,65)
      do i=1,2
        call test(i1a,i1b,i1c,65)
      enddo
      do i=1,65-2
         if(i1a(i) .ne. i-54) goto 10
      enddo



      if(i1a(i) .ne. 7) goto 10

      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) i1a

 20   continue
      end

      subroutine init(i1a,i1b,i1c,n1)
      real*4  i1a(n1),i1b(n1),i1c(n1)

      do i=1,65
        i1a(i) = i-60
        i1b(i) = 0
        i1c(i) = 2
      enddo
      end

      subroutine test(i1a,i1b,i1c,n1)
      real*4 i1a(n1),i1b(n1),i1c(n1)
      
      do i=1,65-1
        i1a(i) = i1a(i+1) + i1c(i)
      enddo
      
      end



