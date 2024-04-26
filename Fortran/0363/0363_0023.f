      program main
      real(16) a(65),b(65),c(65),res(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,res,n1)
      real(16)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = 0
         c(i) = 0
         res(i) = 0
      enddo

      do i=1,65,2
         b(i) = i
         c(i) = i
         res(i) = i + i
      enddo
      end

      subroutine test(a,b,c,n1)
      real(16) a(n1),b(n1),c(n1)
      
      do i=1,65,2
         a(i) = b(i) + c(i)
      enddo
      
      end

