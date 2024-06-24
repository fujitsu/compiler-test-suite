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
         a(i) = 0.0
         if (i .gt. n1/2) then
            b(i) = i
            res(i) = i
         else
            b(i) = 0.0
            res(i) = 0.0
         endif
      enddo
      end

      subroutine test(a,b,n1)
      real(4) a(n1),b(n1)
      
      do i=1,65
         if ( b(i) ) 40,20,30
 20      a(i) = b(i)
         go to 10
 30      a(i) = b(i)
         go to 10
 40      a(i) = b(i)
 10   continue
      enddo
      
      end