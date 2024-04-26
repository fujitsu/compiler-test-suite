      program main
      integer(4) a(65),b(65),c(65),nn,res(65)
      call init(a,b,c,nn,res,65)
      do i=1,2
        call test(a,b,c,nn,65)
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,c,nn,res,n1)
      integer(4)  a(n1),b(n1),c(n1),nn,res(n1)
      nn = 0

      do i=1,65         
         a(i) = 0
         b(i) = i
         c(i) = i
         if (i .gt. n1/2) then
            res(i) = i + 2 - 5
         else
            res(i) = i - 3
         endif
      enddo
      end

      subroutine test(a,b,c,nn,n1)
      integer(4) a(n1),b(n1),c(n1),nn
      
      do i=1,65
         if (c(i) .gt. n1/2 .and. c(i) .lt. n1/2) then
            nn = b(i) + 2
         else
            nn = b(i) - 3 
         endif
         a(i) = nn
      enddo
      
      end
