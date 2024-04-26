      program main
      integer(4) b(65),c(65),nn,res
      call init(b,c,nn,res,65)
      do i=1,2
        call test(b,c,nn,65)
      enddo
      do i=1,65
         if(nn .ne. res) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end
 
      subroutine init(b,c,nn,res,n1)
      integer(4) b(n1),c(n1),nn,res
      res = 0

      do i=1,65
         b(i) = i
         c(i) = i
         nn = 0
         if ( i .gt. n1/2) then
            res = res + i + 2
         endif
      enddo
      res = res * 2
      end

      subroutine test(b,c,nn,n1)
      integer(4) b(n1),c(n1),nn
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            nn = nn + b(i) + 2
         endif
      enddo
      
      end
