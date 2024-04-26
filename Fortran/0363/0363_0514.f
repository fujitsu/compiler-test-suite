      program main
      real(4) a,b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(a .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,res,n1)
      real(4)  a,b(n1),res(n1)

      do i=1,65
         a = 0.0
         b(i) = i
         res(i) = n1
      enddo
      end

      subroutine test(a,b,n1)
      real(4) a,b(n1)
      
      do i=1,65
        a = b(i)
      enddo
      
      end
