      program main
      real*8 a(65),b(65),c(65),res(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(abs(abs(a(i))-abs(res(i))) > 0.00002) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      do i=1,65
         if(abs(abs(a(i))-abs(res(i))) > 0.00002) then
            write(6,*) i,a(i),res(i),abs(abs(a(i))-abs(res(i)))
         endif
      enddo

 20   continue
      end

      subroutine init(a,b,c,res,n1)
      real*8 a(65),b(65),c(65),res(65)

      do i=1,65
         a(i) = 0.
         if (i .gt. n1/2) then
            b(i) = 2*i
            c(i) = i/100
            res(i) = b(i) ** c(i)
         else
            b(i) = -2*i
            c(i) = -i/100
            res(i) = b(i) ** c(i)
         endif
      enddo
      end

      subroutine test(a,b,c,n1)
      real*8 a(65),b(65),c(65)
      
      do i=1,n1
         a(i) = b(i) ** c(i)
      enddo
      
      end
