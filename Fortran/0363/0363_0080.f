      program main
      integer(4) a(65),b(65),nn,res
      call init(a,b,nn,res,65)
      do i=1,2
        call test(a,b,nn,65)
      enddo
      do i=1,65
         if(nn .ne. res) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(a,b,nn,res,n1)
      integer(4) a(n1),b(n1),nn,res

      do i=1,65
         a(i) = i
         b(i) = i
         nn = 0
         res = i + 2
      enddo
      end

      subroutine test(a,b,nn,n1)
      integer(4) a(n1),b(n1),nn
      
      do i=1,65
         if (b(i) .gt. n1/2) then
            nn = a(i) + 2
         else
            nn = a(i) - 3 
         endif
      enddo
      
      end
