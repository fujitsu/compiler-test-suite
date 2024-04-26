      program main
      real*4 r4a(65),r4b(65),res(65)
      call init(r4a,r4b,res,65)
      do i=1,2
        call test(r4a,r4b,65)
      enddo
      do i=1,65
         if(abs(abs(r4a(i))-abs(res(i))) > 0.0000002) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      do i=1,65
         if(abs(abs(r4a(i))-abs(res(i))) > 0.0000002) then
            write (6,*) i,res(i),r4a(i)
         endif
      enddo

 20   continue
      end

      subroutine init(r4a,r4b,res,n1)
      real*4  r4a(n1),r4b(n1),res(n1)

      do i=1,65
         r4a(i) = 0.0
         if (i .gt. n1/2) then
            r4b(i) = i
            res(i) = sin(r4b(i))
         else
            r4b(i) = -i
            res(i) = sin(r4b(i))
         endif
      enddo
      end

      subroutine test(r4a,r4b,n1)
      real*4 r4a(n1),r4b(n1)
      
      do i=1,65
        r4a(i) = sin(r4b(i))
      enddo
      
      end
