      program main
      integer*8 i1a(65),i1b(65),i1c(65),res(65)
      call init(i1a,i1b,i1c,res,65)
      do i=1,2
        call test(i1a,i1b,i1c,65)
      enddo
      do i=1,65
         if(abs(abs(i1a(i))-abs(res(i))) > 0.0000002) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i1a,i1b,i1c,res,n1)
      integer*8  i1a(n1),i1b(n1),i1c(n1),res(n1)

      do i=1,65
         i1a(i) = 0
         i1b(i) = 8
         if (i .gt. n1/2) then
            i1c(i) = 1
            res(i) = 16
         else if ( i .lt. n1/2) then
            i1c(i) = -1
            res(i) = 4
         else
            i1c(i) = 0
            res(i) = 8           
         endif
      enddo
      end

      subroutine test(i1a,i1b,i1c,n1)
      integer*8 i1a(n1),i1b(n1),i1c(n1)
      
      do i=1,65
        i1a(i) = ishft(i1b(i),i1c(i))
      enddo
      
      end
