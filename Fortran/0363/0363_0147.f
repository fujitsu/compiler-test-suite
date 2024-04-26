      program main
      complex*8 c8a(65),c8b(65),res(65)
      real*8 c8c
      call init(c8a,c8b,c8c,res,65)
      do i=1,2
        call test(c8a,c8b,c8c,65)
      enddo
      do i=1,65
         if(c8a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(c8a,c8b,c8c,res,n1)
      complex*8 c8a(n1),c8b(n1),res(65)
      real*8 c8c

      do i=1,65
         if (i .gt. n1/2) then
            c8a(i) = i
            c8b(i) = i
            c8c = 2.0
            res(i) = i * 5
         else
            c8a(i) = -i
            c8b(i) = -i
            c8c = 2.0
            res(i) = -i * 5
         endif
      enddo
      end

      subroutine test(c8a,c8b,c8c,n1)
      complex*8 c8a(n1),c8b(n1)
      real*8 c8c
      
      do i=1,65
        c8a(i) =  c8a(i) + c8b(i) * c8c
      enddo
      
      end
