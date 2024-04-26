      program main
      real(4) b(65),c(65),nn,res
      common //nn
      call init(b,c,nn,res,65)
      do i=1,2
        call test(b,c,65)
      enddo
      do i=1,65
         if(nn .ne. res) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"

      write(6,*) res,nn

 20   continue
      end

      subroutine init(b,c,nn,res,n1)
      real(4) b(n1),c(n1),nn,res
      res = 0

      do i=1,65
         b(i) = i
         c(i) = i
         nn = 0
         if ( i .gt. n1/2) then
            res = res + i + 2
         endif
      enddo
      end

      subroutine test(b,c,n1)
      real(4) b(n1),c(n1),nn,d(100)
      common //nn
      equivalence (d(1),nn)
      nn = 0
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            d(1) = d(1) + b(i) + 2
         endif
      enddo
      
      end







