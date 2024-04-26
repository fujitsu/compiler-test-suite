      program main
      real*8 a,b,res
      call init(a,b,res)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(a .ne. res) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res)
      real*8 a,b,res
      a = 0.0
      b = 1.0
      res = 1.0
      end

      subroutine test(a,b,n1)
      real*8 a,b
      
      do i=1,65
         a = b
      enddo
      
      end





