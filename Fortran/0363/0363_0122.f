      program main
      integer*8 i8a(65),i8b(65),i8c(65)
      call init(i8a,i8b,i8c,65)
      do i=1,2
        call test(i8a,i8b,i8c,65)
      enddo
      do i=1,65
         if(i8a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i8a,i8b,i8c,n1)
      integer*8  i8a(n1),i8b(n1),i8c(n1)

      do i=1,65
        i8a(i) = 0
        i8b(i) = i
        i8c(i) = 1
      enddo
      end

      subroutine test(i8a,i8b,i8c,n1)
      integer*8 i8a(n1),i8b(n1),i8c(n1)
      
      do i=1,65
        i8a(i) = i8b(i) + i8c(i)
      enddo
      
      end
