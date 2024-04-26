      program main
      integer(2) a(65),b(65),x(65),y(65),res(65)
      call init(a,b,x,y,res,65)
      do i=1,2
        call test(a,b,x,y,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,x,y,res,n1)
      integer(2)  a(n1),b(n1),x(n1),y(n1),res(n1)

      do i=1,65
         b(i) = 0
         if (i .gt. n1/2) then
            a(i) = i
            x(i) = i + 1
            y(i) = i
            res(i) = i * 2
         else
            a(i) = i
            x(i) = i
            y(i) = i + 1
            res(i) = i
         endif
      enddo
      end

      subroutine test(a,b,x,y,n1)
      integer(2) a(n1),b(n1),x(n1),y(n1)
      
      do i=1,65
         if (x(i) .gt. y(i)) then
            b(i) = a(i) + i
         else
            b(i) = a(i)
         endif
      enddo
      
      end
