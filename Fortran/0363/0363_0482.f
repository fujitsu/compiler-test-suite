      program main
      complex(16) b(65),nn,res
      integer c(65)
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
      complex(16) b(n1),nn,res
      integer(4) c(n1)
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
      complex(16) b(n1),nn,d(100)
      integer c(n1)
      common //nn
      equivalence (d(1),nn)
      nn = 0
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            d(1) = d(1) + b(i) + 2
         endif
      enddo
      
      end
