      program main
      complex*32 a(65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(abs(abs(a(i))-abs(res(i))) > 1.0e-10) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res,n1)
      complex*32  a(n1),b(n1),res(n1)

      do i=1,65
        a(i) = 0
        b(i) = i
        res(i) =  2.0/sqrt(b(i))
      enddo
      end
      
      subroutine test(a,b,n1)
      complex*32 a(n1),b(n1)
      
      do i=1,65
         a(i) = 2.0/sqrt(b(i))
      enddo
      
      end





