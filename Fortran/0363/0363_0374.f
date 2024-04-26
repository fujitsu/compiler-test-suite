      program main
      real*4 a(65),res(65)
      real*8 c(65)
      call init(a,c,res,65)
      do i=1,2
        call test(a,c,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,c,res,n1)
      real*4 a(n1),res(n1)
      real*8 c(n1)

      do i=1,65
         a(i) = 0.0
         if ( i .gt. n1/2) then
            c(i) = i
            res(i) = i * 2
         else
            c(i) = -i
            res(i) = -i * 2
         endif
      enddo
      end

      subroutine test(a,c,n1)
      real*4 a(n1)
      real*8 c(n1)
      
      do i=1,65
        a(i) = a(i) + c(i)
      enddo
      
      end
