      program main
      integer(1) b(65),c(65),d(65),res
      common //d
      call init(b,c,res,65)
      do i=1,2
        call test(b,c,65)
      enddo

      if(d(1) .ne. res) goto 10
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"

      write(6,*) d
      write(6,*) res

 20   continue
      end

      subroutine init(b,c,res,n1)
      integer(1) b(n1),c(n1),d(65),res
      common //d
      res = 0

      do i=1,65
         b(i) = i
         c(i) = i
         d(i) = 0
         if ( i .gt. n1/2) then
            res = i + 2
         endif
      enddo
      end

      subroutine test(b,c,n1)
      integer(1) b(n1),c(n1),d(65)
      common //d
      
      do i=1,65
         if (c(i) .gt. n1/2) then
            d(1) = b(i) + 2
         endif
      enddo
      
      end







