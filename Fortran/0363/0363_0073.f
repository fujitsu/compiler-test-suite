      program main
      integer(4) a(65),b(65),c(65),res(65)
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
      integer(4)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
         a(i) = 0
         b(i) = i
         c(i) = i
         res(i) = 0
         if (i .gt. n1/2) then
            res(2) = res(2) + i + 2
         endif
      enddo
      res(2) = res(2) * 2
      end

      subroutine test(a,b,c,n1)
      integer(4) a(n1),b(n1),c(n1)
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            a(2) = a(2) + b(i) + 2
         endif
      enddo
      
      end
