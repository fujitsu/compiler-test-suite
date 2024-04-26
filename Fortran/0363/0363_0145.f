      program main
      real*8 r8a(65),r8b(65),res(65)
      call init(r8a,r8b,res,65)
      do i=1,2
        call test(r8a,r8b,65)
      enddo
      do i=1,65
         if(abs(r8a(i)-res(i)) > 1.0e-13 ) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write (6,*) r8a

 20   continue
      end

      subroutine init(r8a,r8b,res,n1)
      real*8  r8a(n1),r8b(n1),res(n1)

      do i=1,65
         r8a(i) = 0.0
         if (i .gt. n1/2) then
            r8b(i) = i
            res(i) = sin(r8b(i))
         else
            r8b(i) = -i
            res(i) = sin(r8b(i))
         endif
      enddo
      end

      subroutine test(r8a,r8b,n1)
      real*8 r8a(n1),r8b(n1)
      
      do i=1,65
        r8a(i) = sin(r8b(i))
      enddo
      
      end





