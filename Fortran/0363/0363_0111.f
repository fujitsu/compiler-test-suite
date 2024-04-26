      program main
      complex*32 c8a(65),c8b(65),c8c(65),res(65)
      call init(c8a,c8b,c8c,res,65)
      do i=1,2
        call test(c8a,c8b,c8c,65)
      enddo
      do i=1,65
         if(c8a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) c8a
      write(6,*) res

 20   continue
      end

      subroutine init(c8a,c8b,c8c,res,n1)
      complex*32  c8a(n1),c8b(n1),c8c(n1),res(n1)

      do i=1,65
        c8a(i) = 0
        c8b(i) = cmplx(i,-i)
        c8c(i) = (1.,3.)
        res(i) = cmplx(i+1,-i+3)
      enddo
      end

      subroutine test(c8a,c8b,c8c,n1)
      complex*32 c8a(n1),c8b(n1),c8c(n1)
      
      do i=1,65
        c8a(i) = c8b(i) + c8c(i)
      enddo
      
      end
