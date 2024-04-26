      program main
      integer*4 i4a(65),i4b(65),i4c(65)
      call init(i4a,i4b,i4c,65)
      do i=1,2
        call test(i4a,i4b,i4c,65)
      enddo
      do i=1,65
         if(i4a(i) .ne. (i+1)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i4a,i4b,i4c,n1)
      integer*4  i4a(n1),i4b(n1),i4c(n1)

      do i=1,65
        i4a(i) = 0
        i4b(i) = i
        i4c(i) = 1
      enddo
      end

      subroutine test(i4a,i4b,i4c,n1)
      integer*4 i4a(n1),i4b(n1),i4c(n1)
      
      do i=1,65
        i4a(i) = i4b(i) + i4c(i)
      enddo
      
      end
