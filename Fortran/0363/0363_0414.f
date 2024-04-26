      program main
      complex a(65)
      real b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(abs(abs(a(i)) - abs(res(i))) .gt. 0.000005) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res,n1)
      complex a(n1)
      real b(n1),res(n1)

      do i=1,65
         a(i) = 0
         if (i .gt. n1/2) then
            b(i) = i
            res(i) = sin(b(i)) + cos(b(i))
         else
            b(i) = -i
            res(i) = sin(b(i)) + cos(b(i))
         endif
      enddo
      end

      subroutine test(a,b,n1)
      complex a(n1)
      real b(n1)
      
      do i=1,65
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      
      end
