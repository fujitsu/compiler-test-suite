      program main
      complex*32 a(65),res(65)
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
      complex*32 a(n1),res(n1)

      do i=1,65
         a(i) = 0.0
         res(i) = (1.0,3.0)
      enddo
      end

      subroutine test(a,n1)
      complex*32 a(n1)
      
      do i=1,65
         a(i) = (1.0,3.0)
      enddo
      
      end





