      program main
      logical*2 a(65)
      integer*2 b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res,n1)
      logical*2 a(65)
      integer*2 b(65),res(65)

      do i=1,65
         b(i) = 0
         if (i .gt. n1/2) then
            a(i) = .true.
            res(i) = 1
         else
            a(i) = .false.
            res(i) = 0
         endif
      enddo
      end

      subroutine test(a,b,n1)
      logical*2 a(n1)
      integer*2 b(n1)
      
      do i=1,65
         b(i) = a(i)
      enddo
      
      end
