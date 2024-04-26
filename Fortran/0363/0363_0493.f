      program main
      complex(4) b(65),nn,res,e(65)
      real(4) c(65)
      common //nn
      call init(b,c,e,nn,res,65)
      do i=1,2
        call test(b,c,e,65)
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

      subroutine init(b,c,e,nn,res,n1)
      complex(4) b(n1),nn,res,e(n1)
      real(4) c(65)
      res = 0

      do i=1,65
         b(i) = i
         c(i) = i
         e(i) = 3
         if ( i .gt. n1/2) then
            res = res + i * 3
         endif
      enddo
      end

      subroutine test(b,c,e,n1)
      complex(4) b(n1),nn,d(100),e(n1)
      real(4) c(65)
      common //nn
      equivalence (d(1),nn)
      nn = 0
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            d(1) = d(1) + b(i) * e(i)
         endif
      enddo
      
      end
