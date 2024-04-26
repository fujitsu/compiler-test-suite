      program main
      integer(1) a(65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,res,n1)
      integer(1)  a(n1),b(n1),res(n1)

      do i=1,65
         b(i) = 0
         if (i .gt. n1/2) then
            a(i) = i + 1
            res(i) = 0
         else
            a(i) = i - 1
            res(i) = i - 1
         endif
      enddo
      end

      subroutine test(a,b,n1)
      integer(1) a(n1),b(n1)
      
      do i=1,65
         if ( a(i) .gt. i ) goto 10
         b(i) = a(i)
 10   enddo
      
      end
