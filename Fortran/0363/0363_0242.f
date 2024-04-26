      program main
      real(4) a(65),b(65),res(65)
      call init(a,b,res,65)
      do i=1,2
        call test(a,b,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,res,n1)
      real(4)  a(n1),b(n1),res(n1)

      do i=1,65
         res(i) = i + 1
         if (i .gt. n1/2) then
            a(i) = i + 1
            b(i) = i
         else
            a(i) = i
            b(i) = i + 1
         endif
      enddo
      end

      subroutine test(a,b,n1)
      real(4) a(n1),b(n1)
      
      do i=1,65
        a(i) = max(a(i),b(i))
      enddo
      
      end
