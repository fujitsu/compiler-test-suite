      program main
      complex*16 c16a(65),c16b(65),res(65)
      real*16 c16c
      call init(c16a,c16b,c16c,res,65)
      do i=1,2
        call test(c16a,c16b,c16c,65)
      enddo
      do i=1,65
         if(c16a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(c16a,c16b,c16c,res,n1)
      complex*16 c16a(n1),c16b(n1),res(65)
      real*16 c16c

      do i=1,65
         if (i .gt. n1/2) then
            c16a(i) = i
            c16b(i) = i
            c16c = 2.0
            res(i) = i * 5
         else
            c16a(i) = -i
            c16b(i) = -i
            c16c = 2.0
            res(i) = -i * 5
         endif
      enddo
      end

      subroutine test(c16a,c16b,c16c,n1)
      complex*16 c16a(n1),c16b(n1)
      real*16 c16c
      
      do i=1,65
        c16a(i) =  c16a(i) + c16b(i) * c16c
      enddo
      
      end
