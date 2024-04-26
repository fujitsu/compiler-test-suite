      program main
      integer*4 a(65),b(65),res(65)
      integer*4 c(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(abs(abs(a(i)) - abs(res(i))) .gt. 0.000005) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) a
      write(6,*) res

 20   continue
      end

      subroutine init(a,b,c,res,n1)
      integer*4 a(65),b(65),res(65)
      integer*4 c(65)

      do i=1,65
         a(i) = 0
         if (i .gt. n1/2) then
            b(i) = 2*i
            c(i) = i
            res(i) = b(i) ** c(i)
         else
            b(i) = -2*i
            c(i) = -i
            res(i) = b(i) ** c(i)
         endif
      enddo
      end

      subroutine test(a,b,c,n1)
      integer*4 a(65),b(65)
      integer*4 c(65)
      
      do i=1,n1
         a(i) = b(i) ** c(i)
      enddo
      
      end
