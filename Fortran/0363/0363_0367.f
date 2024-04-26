      program main
      integer(2) a(65),b(65),c(65),res(65)
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
      integer(2)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
        a(i) = 0
        if (i .gt. n1/2) then
           b(i) = -i
           c(i) = 2
           res(i) = -i * 4
        else
           b(i) = i
           c(i) = 2
           res(i) = i * 4
        endif
      enddo
      end
      
      subroutine test(a,b,c,n1)
      integer(2) a(n1),b(n1),c(n1)
      
      do i=1,65
         a(i) = a(i) + b(i) * c(i)
      enddo
      
      end
