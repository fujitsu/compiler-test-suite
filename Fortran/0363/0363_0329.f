      program main
      integer*1 a(65),res(65)
      call init(a,res,65)
      do i=1,2
        call test(a,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,res,n1)
      integer*1 a(65),res(65)

      do i=1,65
         if (i .gt. n1/2) then
            a(i) = i
            res(i) = i
         else
            a(i) = -i
            res(i) = -i
         endif
      enddo
      end

      subroutine test(a,n1)
      integer*1 a(65)
      
      do i=1,65
         a(i) = not(a(i))
      enddo
      
      end








